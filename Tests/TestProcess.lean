/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Sequencelib.Meta.Process

open Lean

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
    ← `(term|comprN (λ(x : ℤ) ↦ 0) (((x - 2) - ((2)))))
  ]
  for e in exprs do
    let x ← ProcessM.run (processTerm e) {s with safeCtx := true}
    dbg_trace (← PrettyPrinter.ppTerm x)
