/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/

import Mathlib
import Sequencelib.Factorial
import Sequencelib.Meta

/-!
# Double Factorials
-/

namespace Sequence

/--
Double Factorials: `a(n) = n * a(n-2)`, with initial conditions `a(0) = a(1) = 1`.
-/
@[OEIS := A006882]
def DoubleFactorial : ℕ → ℕ
  | 0 => 1
  | 1 => 1
  | n + 2 => (n + 2) * DoubleFactorial n

@[simp]
theorem DoubleFactorial_zero : DoubleFactorial 0 = 1 := rfl
theorem DoubleFactorial_one : DoubleFactorial 1 = 1 := rfl
theorem DoubleFactorial_two : DoubleFactorial 2 = 2 := rfl
theorem DoubleFactorial_three : DoubleFactorial 3 = 3 := rfl
theorem DoubleFactorial_four : DoubleFactorial 4 = 8 := rfl
theorem DoubleFactorial_five : DoubleFactorial 5 = 15 := rfl

theorem DoubleFactorial_def {n : ℕ} :
    DoubleFactorial (n + 1) = (n + 1) * DoubleFactorial (n - 1) := by
  by_cases h : 1 ≤ n
  · rw [show n + 1 = (n - 1) + 2 by omega]
    simp [DoubleFactorial]
  · simp [Nat.lt_one_iff] at h
    simp [h, DoubleFactorial]

theorem mul_DoubleFactorial_eq_Factorial (n : ℕ) :
    DoubleFactorial n * DoubleFactorial (n - 1) = Factorial n := by
  simp [Factorial]
  induction' n with n ih
  · simp
  · simp
    rw [Nat.factorial_succ, ← ih]
    ac_nf
    congr
    simp [DoubleFactorial_def, mul_comm]
