import Lean
import Qq
import Sequencelib.Meta

open Lean Expr Elab Term Tactic Meta Qq Syntax

#check Syntax.node

def f := System.mkFilePath [".", "Defs.lean"]

def s : String := r#"
@[OEIS := A000537, offset := 0, derive := true, maxIndex := 10]
def A000537 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (((y * y) * y) + x)) (x) (0)
"#

#check Lean.Elab.Command.CommandElabM
#check Lean.importModules
#check Term.elabLetDecl
#check Lean.Parser.Command.declValSimple
#check Lean.PrettyPrinter.format
#check Frontend.processCommands
#check parseImports'
#check forEachModuleInDir
#check saveModuleDataParts
#check Lean.PrettyPrinter.ppModule
#check Lean.Elab.Command.elabCommand
run_cmd do
  let env ← getEnv
  let g ← IO.FS.realPath (System.mkFilePath ["README.md"])
  let u := Lean.Parser.runParserCategory env `command r#"def foo := 10"# |>.toOption |>.getD default
  dbg_trace u
  Lean.Elab.Command.elabCommand u

#eval foo
  -- let up ← Lean.PrettyPrinter.formatTerm u
  -- dbg_trace up
  -- let v := u[1].getArg 3
  -- let w := v.getArg 1
  -- let w2 := w.getArg 1
  -- -- (Term.letDecl (Term.letIdDecl `x [] [] ":=" («term_-_» `n "-" (num "0"))))
  -- dbg_trace w2.getKind
  -- let w3 := w2.modifyArg
  -- match w2 with
  -- | Syntax.node _ `Lean.Parser.Term.letDecl args => dbg_trace args
  -- | _ => dbg_trace "other"
  -- let z ← Lean.PrettyPrinter.formatTerm w2
  -- dbg_trace z
  -- let w3 := w2.getArg 0
  -- let w3 := w3.getArg 4
  -- let w3 := w3.getKind

#check TSyntax
#check Lean.Parser.Module.module
def processModule (content : String) : MetaM String := do
  let env ← getEnv
  let v ← Parser.testParseModule env "<input>" content
  let cursor := Syntax.Traverser.fromSyntax v
  let mut commands := cursor.down 1 |>.down 0
  while true do
    IO.println "---"
    --IO.println <| ← PrettyPrinter.formatCommand commands.cur
    IO.println commands.cur
    IO.println s!"kind: {commands.cur.getKind}"
    if commands.cur.getKind == `Lean.Parser.Command.open then
      commands := commands.setCur (← `(term|100))
    commands := commands.right
    if commands.cur.isMissing then
      break
  let final := commands.up.up
  IO.println "-----\nppModule\n------"
  let m := match final.cur with
  | `(Lean.Parser.Module.module|$m) => m
  IO.println <| ← PrettyPrinter.ppModule m
  return ""

#check Name
#check liftCommandElabM
#check Lean.Parser.Module.module
#check Syntax.Traverser.fromSyntax
run_elab do
  let env ← getEnv
  let g ← IO.FS.readFile (System.mkFilePath ["Sequencelib/Synthetic/A000537.lean"])
  let v ← Lean.Parser.testParseFile env (System.mkFilePath ["Sequencelib/Synthetic/A000537.lean"])
  let t := Syntax.Traverser.fromSyntax v
  let s1 := t
  let new ← `(term|100)
  --dbg_trace t2.cur
  let v := (t.down 1).cur
  let t := (t.down 1) |>.down 0
  let t2 := t.setCur new
  let t2 := t2.up.up.up.up

  --let s2 := s.down 1 |>.down 0 |>.right.right.right
  --dbg_trace s.cur
  --let z ← PrettyPrinter.ppModule v
  --dbg_trace (t2.cur)
  --dbg_trace v.raw.getKind
  --dbg_trace (s.cur)
  --dbg_trace (← Lean.PrettyPrinter.formatCategory `module s.cur)

  let st ← processModule g
