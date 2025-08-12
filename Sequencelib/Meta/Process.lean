import Lean
import Qq
import Sequencelib.Meta
import GenSeq

open Synth
open Lean Expr Elab Term Tactic Meta Qq Syntax
open Lean.Parser.Command

structure SeqInfo where
  cod : Codomain
  deriving Repr

instance : Inhabited SeqInfo where
  default := ⟨.Int⟩

structure ProcessState where
  freeVars : Std.HashSet Name
  safeCtx : Bool
  seqInfo : Std.HashMap Name SeqInfo
  deriving Inhabited

abbrev ProcessM (α : Type) := StateT ProcessState TermElabM α

def ProcessM.run {α : Type} (x : ProcessM α) (s : ProcessState := default) : TermElabM α :=
  StateT.run' x s

def setSafe : ProcessM Unit := do
  StateT.set {(← get) with safeCtx := true}

def setUnsafe : ProcessM Unit := do
  StateT.set {(← get) with safeCtx := false}

def clearFreeVars : ProcessM Unit := do
  StateT.set {(← get) with freeVars := ∅}

partial def processTerm (term : TSyntax `term) : ProcessM (TSyntax `term) := do
  --dbg_trace s!"term: {term}"
  match term with
  | `(term|($n:num)) =>
    --dbg_trace s!"--- (num): {n}"
    setSafe
    `(term|$n)
  | tz@`(term|$_:num) =>
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
  | `(term|λ(x : ℤ) ↦ $t:term) =>
    setSafe
    let t1 ← processTerm t
    let f := (← get).freeVars
    clearFreeVars
    if f == {`x} then
      `(term|λ($(mkIdent `x) : ℤ) ↦ $t1)
    else
      `(term|λ($(mkIdent `_x) : ℤ) ↦ $t1)
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
  | `(term|loop2 $f1 $f2 $a $b $c) =>
    --dbg_trace s!"--- loop2"
    setUnsafe
    let tf1 ← processTerm f1
    setUnsafe
    let tf2 ← processTerm f2
    setUnsafe
    let ta ← processTerm a
    setUnsafe
    let tb ← processTerm b
    setUnsafe
    let tc ← processTerm c
    `(term|$(mkIdent `loop2) $tf1 $tf2 $ta $tb $tc)
  | `(term|comprN $f $t) =>
    setUnsafe
    let tf ← processTerm f
    setUnsafe
    let t1 ← processTerm t
    `(term|$(mkIdent `comprN) $tf $t1)
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
    --dbg_trace s!"--- default := {s}"
    pure term

def processCodomain (c : Codomain) (_cod: TSyntax `term) (body : TSyntax `term)
    : ProcessM <| TSyntax `term × TSyntax `term:= do
  match c with
  | .Nat => do return (← `(term|ℕ), ← `(term|$(mkIdent `Int.toNat) <| $body))
  | .Int => do return (← `(term|ℤ), body)

def processDef (definition : TSyntax `Lean.Parser.Command.definition) :
    ProcessM <| TSyntax `Lean.Parser.Command.definition := do
  let x ← match definition with
  | `(definition|def $a:ident ($e:ident : $b:term) : $t:term :=
        let $tt:letDecl
        $rr:term) =>
      let info := (← get).seqInfo[a.getId]?.getD default
      let new_rr ← processTerm rr
      let (new_t, new_body) ← processCodomain info.cod t new_rr
      `(definition|def $a:declId ($e:ident : $b:term) : $new_t:term :=
        let $tt:letDecl
        $new_body:term)
  | s => pure s
  return x

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

run_elab do
  let g ← IO.FS.readFile (System.mkFilePath ["Sequencelib/Synthetic/A003010.lean"])
  let s : ProcessState := default
  let s := {s with seqInfo := .ofList [(`A003010, ⟨.Nat⟩)]}
  let st ← ProcessM.run (processModule g) s
  dbg_trace s!"return:\n{st}"

def A003010 (n : ℕ) : ℕ :=
  let x := n - 0
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x * x) - 2) x 4
