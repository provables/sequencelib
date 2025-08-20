/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Sequencelib.Meta.Process

open Lean
open Lean.Parser.Command

/--
info: λ (x y : ℤ) ↦ y + x
loop (λ (x _y : ℤ) ↦ (x * x) - 2) x 4
(x + 5) - (x - y)
(x + 3) - (x - y)
λ (_x _y : ℤ) ↦ 0
(((x * x) * x) - 2) * x
(((x % x) - x) - 2) * x
if (x + y) ≤ 0 then 1 + x else 1 + y
loop2 (λ (x _y : ℤ) ↦ x) (λ (_x y : ℤ) ↦ y) (x + 2) 5 (x + 1)
comprN (λ (_x : ℤ) ↦ 0) ((x - 2) - 2)
loop (λ (x _y : ℤ) ↦ (x * x) - 2) x 4
x
y
-(x + y)
0
x
(x + 1)
loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 1 + (2 * (x * y))) 2 y * x) x 1
loop (λ (x y : ℤ) ↦ x + (x - loop (λ (x y : ℤ) ↦ x * y) y 1)) (x - 1) 1
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
    ← `(term|if (x + (y)) ≤ 0 then (1 + (x)) else (((((1))) + y))),
    ← `(term|loop2 (λ (x y : ℤ) ↦ x) (λ (x y : ℤ) ↦ y) ((x + 2)) (2 + 3) (x + 1)),
    ← `(term|comprN (λ(x : ℤ) ↦ 0) (((x - 2) - ((2))))),
    ← `(term|loop (λ (x y : ℤ) ↦ (x * x) - (2)) x (4)),
    ← `(term|x - 0),
    ← `(term|0 + y),
    ← `(term|0 - (x + y)),
    ← `(term|x * 0),
    ← `(term|x * 1),
    ← `(term|(x + 1)/1),
    ← `(term|loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 1 + (2 * (x * y))) 2 y * x) x 1),
    ← `(term|loop (λ(x y : ℤ) ↦ (x + (x - loop (λ(x y : ℤ) ↦ (x * y)) (y) (1)))) ((x - 1)) (1)),
    --← `(term|loop2 (λ (x y : ℤ) ↦ x * (-((2 + y) * y))) (λ (_x y : ℤ) ↦ y) x 1 x)
  ]
  for e in exprs do
    let x ← ProcessM.run (processTerm e) {s with safeCtx := true}
    dbg_trace (← PrettyPrinter.ppTerm x)

def decl (n : ℕ) : String := s!"
def foo (n : ℕ) : ℤ :=
  let x := n - {n}
  loop (λ (x y : ℤ) ↦ (x * x) - 2) x 4
"

/--
info: def foo (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x * x) - 2) x 4
def foo (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x * x) - 2) x 4
-/
#guard_msgs in
run_elab do
  let env ← getEnv
  for i in [0, 3] do
    let e : Syntax ← Parser.testParseModule env "<input>" <| decl i
    let e := (e.getArg 1)[0].getArg 1
    let s : ProcessState := default
    let s := {s with seqInfo := .ofList [(`foo, ⟨.Nat⟩)]}
    let x ← ProcessM.run (processDef ⟨e⟩) s
    let y ← PrettyPrinter.ppCommand ⟨x⟩
    dbg_trace y
