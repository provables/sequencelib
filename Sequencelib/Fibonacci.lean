/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta


namespace Sequence

/-
The Fibonacci sequence, 0, 1, 1, 2, 3, 5, 8, ...
-/
@[OEIS := A000045, offset := 0]
def Fibonacci := Nat.fib

theorem Fibonacci_zero : Fibonacci 0 = 0 := Nat.fib_zero

theorem Fibonacci_one : Fibonacci 1 = 1 := Nat.fib_one

theorem Fibonacci_two : Fibonacci 2 = 1 := Nat.fib_two

theorem Fibonacci_three : Fibonacci 3 = 2 := by decide

theorem Fibonacci_four : Fibonacci 4 = 3 := by decide

theorem Fibonacci_five : Fibonacci 5 = 5 := by decide

theorem Fibonacci_six : Fibonacci 6 = 8 := by decide

theorem Fibonacci_seven : Fibonacci 7 = 13 := by decide

theorem Fibonacci_eight : Fibonacci 8 = 21 := by decide

theorem Fibonacci_nine : Fibonacci 9 = 34 := by decide

theorem Fibonacci_ten : Fibonacci 10 = 55 := by decide

open Nat

-- Identity 1 (page 2) from Proofs that Really Count
example
  (n : ℕ)
: ∑ i ∈ Finset.range (n + 1), Fibonacci (i + 1) = Fibonacci (n + 3) - 1 := by
  unfold Fibonacci
  induction n
  case zero =>
    simp
    rw [show Nat.fib 3 = 2 by rfl]
  case succ n IH =>
    rw [Finset.sum_range_succ, IH]
    rw [show n + 1 + 2 + 1 = n + 4 by ring]
    have : fib (n + 4) = fib (n + 3) + fib (n + 2) := by
      rw [fib_add_one, show n + 3 - 1 = n + 2 by rfl]
      ac_rfl
      positivity
    rw [this]
    ring_nf
    rw [show fib (3 + n) - 1 + fib (2 + n) = fib (2 + n) + (fib (3 + n) - 1) by ring]
    zify

    rw [cast_pred (by simp)]
    rw [cast_pred (by simp)]
    rw [cast_add]
    ring
