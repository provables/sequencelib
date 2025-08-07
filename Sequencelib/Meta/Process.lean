import Lean
import Qq
import Sequencelib.Meta
import GenSeq

open Synth
open Lean Expr Elab Term Tactic Meta Qq Syntax
open Lean.Parser.Command

#check Syntax.node

def f := System.mkFilePath [".", "Defs.lean"]

def s : String := r#"
@[OEIS := A000537, offset := 0, derive := true, maxIndex := 10]
def A000537 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (((y * y) * y) + x)) (x) (0)
"#

#check Lean.importModules
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

def processTerm (term : Syntax) : TermElabM Syntax :=
  pure term

--def processCodomain (ter)

def processDef (definition : TSyntax `Lean.Parser.Command.definition) :
    TermElabM <| TSyntax `Lean.Parser.Command.definition := do
  dbg_trace s!"==== Process Def =====\n{definition}"
  let x ← match definition with
  | u@`(definition|def $a:declId ($e:ident : $b:term) : $t:term :=
      let $tt:letDecl
      $rr:term) =>
      dbg_trace s!"a = {a}"
      dbg_trace s!"e = {e}"
      dbg_trace s!"b = {b}"
      dbg_trace s!"t = {t}"
      dbg_trace s!"tt = {tt}"
      dbg_trace s!"rr = {rr}"
      pure u
  | s => pure s
  return x

#check Term.mkConst
#check Lean.mkConst
#check Term.exprToSyntax
#check TSyntax
#check Lean.Parser.Command.definition
--   "def " >> recover declId skipUntilWsOrDelim >> ppIndent optDeclSig >> declVal >> optDefDeriving
def processModule (content : String) : TermElabM String := do
  let env ← getEnv
  let v ← Parser.testParseModule env "<input>" content
  let cursor := Syntax.Traverser.fromSyntax v
  let mut commands := cursor.down 1 |>.down 0
  while true do
    if commands.cur.isOfKind `Lean.Parser.Command.declaration then
      match (commands.down 0).cur with
      | `(declModifiersT|@[$[$attrs:attr],*]) =>
        let some z := attrs[0]? | default
        if z.raw.isOfKind `OEIS then
          commands := commands.down 1
          commands := commands.setCur <| (← processDef ⟨commands.cur⟩)
          commands := commands.up
      | _ => pure ()
    commands := commands.right
    if commands.cur.isMissing then
      break
  return s!"{← PrettyPrinter.ppModule ⟨commands.up.up.cur⟩}"

#check Format
#check Name
#check liftCommandElabM
#check Lean.Parser.Module.module
#check Syntax.Traverser.fromSyntax
run_elab do
  let g ← IO.FS.readFile (System.mkFilePath ["Sequencelib/Synthetic/A003010.lean"])
  let st ← processModule g
  dbg_trace s!"return:\n{st}"
