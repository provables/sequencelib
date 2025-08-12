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
  --dbg_trace u
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

structure SeqInfo where
  cod : Codomain
  deriving Inhabited

def LocalInfo : Std.HashMap Name SeqInfo := .ofList [
  (`A003010, ⟨.Nat⟩)
]

structure ProcessState where
  freeVars : Std.HashSet Name
  removeParens : Bool
  safeCtx : Bool
  deriving Inhabited

abbrev ProcessM (α : Type) := StateT ProcessState TermElabM α

def ProcessM.run {α : Type} (x : ProcessM α) (s : ProcessState := default) : TermElabM α :=
  StateT.run' x s

def removeParens : ProcessM Unit := do
  StateT.set {(← get) with removeParens := true}

def keepParens : ProcessM Unit := do
  StateT.set {(← get) with removeParens := false}

def setSafe : ProcessM Unit := do
  StateT.set {(← get) with safeCtx := true}

def setUnsafe : ProcessM Unit := do
  StateT.set {(← get) with safeCtx := false}

def clearFreeVars : ProcessM Unit := do
  StateT.set {(← get) with freeVars := ∅}


-- TODO: Add if/then, loop2 and compr
#check Std.HashSet
#check mkNatLit
#check StateT.modifyGet
partial def processTerm (term : TSyntax `term) : ProcessM (TSyntax `term) := do
  --dbg_trace s!"term: {term}"
  match term with
  | `(term|($n:num)) =>
    --dbg_trace s!"--- (num): {n}"
    setSafe
    `(term|$n)
  | tz@`(term|$n:num) =>
    --dbg_trace s!"--- num: {n}"
    pure tz
  | `(term|($ti:ident)) =>
    --dbg_trace s!"--- (ident) := {ti}"
    let t ← processTerm ti
    setSafe
    `(term|$t)
  | `(term|($t:term)) =>
    --dbg_trace s!"--- (term)"
    let p := (← get).safeCtx
    let t2 ← processTerm t
    if p then
      `(term|$t2)
    else
      if (← get).safeCtx then
        `(term|$t2)
      else
        setSafe
        `(term|($t2))
  | `(term|$n:num + $m:num) =>
    --dbg_trace s!"--- sum_num := {n} + {m}"
    setSafe
    `(term|$(mkNatLit (n.getNat + m.getNat)))
  | `(term|$a + $b) =>
    --dbg_trace s!"--- sum"
    setUnsafe
    let t1 ← processTerm a
    let t2 ← processTerm b
    setUnsafe
    `(term|$t1 + $t2)
  | `(term|$a - $b) =>
    --dbg_trace s!"--- sub"
    setUnsafe
    let t1 ← processTerm a
    let t2 ← processTerm b
    setUnsafe
    `(term|$t1 - $t2)
  | `(term|$a * $b) =>
    --dbg_trace s!"--- mul"
    setUnsafe
    let t1 ← processTerm a
    let t2 ← processTerm b
    setUnsafe
    `(term|$t1 * $t2)
  | `(term|$a / $b) =>
    --dbg_trace s!"--- div"
    setUnsafe
    let t1 ← processTerm a
    let t2 ← processTerm b
    setUnsafe
    `(term|$t1 / $t2)
  | `(term|$a % $b) =>
    --dbg_trace s!"--- mod"
    setUnsafe
    let t1 ← processTerm a
    let t2 ← processTerm b
    setUnsafe
    `(term|$t1 % $t2)
  | `(term|if $t:term ≤ 0 then $a:term else $b:term) =>
    --dbg_trace s!"--- if"
    setUnsafe
    let t1 ← processTerm t
    setSafe
    let ta ← processTerm a
    setSafe
    let tb ← processTerm b
    `(term|if $t1 ≤ 0 then $ta else $tb)
  | `(term|λ(x y : ℤ) ↦ $t:term) =>
    --dbg_trace s!"--- fun"
    setSafe
    let t1 ← processTerm t
    let s ← get
    let f1 := s.freeVars
    --StateT.set {s with freeVars := ∅}
    clearFreeVars
    if f1 == {`x} then
      `(term|λ($(mkIdent `x) $(mkIdent `_y) : ℤ) ↦ $t1)
    else if f1 == {`y} then
      `(term|λ($(mkIdent `_x) $(mkIdent `y) : ℤ) ↦ $t1)
    else if f1 == {`x, `y} then
      `(term|λ($(mkIdent `x) $(mkIdent `y) : ℤ) ↦ $t1)
    else
      `(term|λ($(mkIdent `_x) $(mkIdent `_y) : ℤ) ↦ $t1)
  | `(term|loop $f $a $b) =>
    --dbg_trace s!"--- loop"
    setUnsafe
    let tf ← processTerm f
    setUnsafe
    let ta ← processTerm a
    setUnsafe
    let tb ← processTerm b
    --StateT.set {(← get) with freeVars := ∅}
    clearFreeVars
    `(term|$(mkIdent `loop) $tf $ta $tb)
  | `(term|x) =>
    --dbg_trace s!"--- x := x"
    let s ← get
    StateT.set {s with freeVars := s.freeVars.insert `x}
    `(term|$(mkIdent `x))
  | `(term|y) =>
    --dbg_trace s!"--- y := y"
    let s ← get
    StateT.set {s with freeVars := s.freeVars.insert `y}
    `(term|$(mkIdent `y))
  | s =>
    dbg_trace s!"--- default := {s}"
    pure term


/--
info: λ (x y : ℤ) ↦ y + x
loop (λ (x _y : ℤ) ↦ (x * x) - 2) x 4
(x + 5) - (x - y)
(x + 3) - (x - y)
λ (_x _y : ℤ) ↦ 0
(((x * x) * x) - 2) * x
(((x % x) - x) - 2) * x
if (x + y) ≤ 0 then 1 + x else 1 + y
-/
#guard_msgs in
run_elab do
  let s : ProcessState := default
  let exprs := #[
    ← `(term|λ(x y : ℤ) ↦ y + x ),
    ← `(term|loop (λ (x y : ℤ) ↦ ((x * x) - 2)) x ((2 + 2))),
    ← `(term|(x + (5)) - ((x - y))),
    ← `(term|(x + 3) - (((x)) - y)),
    ← `(term|λ(x y : ℤ) ↦ 0),
    ← `(term|((((x * x) * x) - 2) * x)),
    ← `(term|(((((x % x) - x)) - 2) * (x))),
    ← `(term|if (x + y) ≤ 0 then (1 + (x)) else (((((1))) + y)))
  ]
  for e in exprs do
    let x ← ProcessM.run (processTerm e) {s with safeCtx := true}
    dbg_trace (← PrettyPrinter.ppTerm x)

#check evalTactic
run_elab do
  let t ← `(term|λ(x y : ℤ) ↦ y + x )
  let tt ← `(term|loop (λ (x y : ℤ) ↦ ((x * x) - 2)) x ((2 + 2)))
  let ttt ← `(term|λ(x y : ℤ) ↦ 0)

  let t5 ← `(term|(x + 3) - (((x)) - y))
  let s : ProcessState := default
  let x ← ProcessM.run (processTerm t5) {s with safeCtx := true}
  dbg_trace s!"--- {x}"
  let z ← PrettyPrinter.ppTerm x
  dbg_trace s!"pretty: {z}"

def g x := loop (λ (x _y : ℤ) ↦ (x * x) - 2) x 4

def processCodomain (c : Codomain) (_cod: TSyntax `term) : TermElabM <| TSyntax `term := do
  match c with
  | .Nat => `(term|ℕ)
  | .Int => `(term|ℤ)

def processDef (definition : TSyntax `Lean.Parser.Command.definition) :
    ProcessM <| TSyntax `Lean.Parser.Command.definition := do
  let x ← match definition with
  | orig@`(definition|def $a:ident ($e:ident : $b:term) : $t:term :=
        let $tt:letDecl
        $rr:term) =>
      let some info := LocalInfo[a.getId]? |
        logWarning m!"Function {a} not found in OEISInfo. Keeping original definition."
        return orig
      let new_t ← processCodomain info.cod t
      let new_rr ← processTerm rr
      `(definition|def $a:declId ($e:ident : $b:term) : $new_t:term :=
        let $tt:letDecl
        $new_rr:term)
  | s => pure s
  return x

#eval (Name.mkStr1 "ℕ")
#check Term.mkConst
#check Lean.mkConst
#check Term.exprToSyntax
#check TSyntax
#check Lean.Parser.Command.definition
--   "def " >> recover declId skipUntilWsOrDelim >> ppIndent optDeclSig >> declVal >> optDefDeriving
def processModule (content : String) : ProcessM String := do
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
#check termℕ
#check liftCommandElabM
#check Lean.Parser.Module.module
#check Syntax.Traverser.fromSyntax
run_elab do
  let g ← IO.FS.readFile (System.mkFilePath ["Sequencelib/Synthetic/A003010.lean"])
  let st ← ProcessM.run <| processModule g
  dbg_trace s!"return:\n{st}"

def A003010 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ ((x * x) - 2)) (x) ((2 + 2))
