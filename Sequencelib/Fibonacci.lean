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

/--
F_0 + F_1 + ... + F_n = F_{n+3} - 1
This is Identity 1 (page 2) from Proofs that Really Count: The Art of Combinatorial Proof by Arthur T. Benjamin and Jennifer J. Quinn
-/
theorem sum_range_fib_eq_fib
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


/--
2 F_n = F_{n+1} + F_{n-2}
This Identity 16 (page 13) from Proofs that Really Count: The Art of Combinatorial Proof by Arthur T. Benjamin and Jennifer J. Quinn
-/
theorem two_mul_fib_n
  (n : ℕ)
  (hn : 2 ≤ n)
: 2 * Fibonacci n = Fibonacci (n + 1) + Fibonacci (n - 2) := by
  unfold Fibonacci
  rw [fib_add_one (by omega)]
  suffices : fib n = fib (n - 1) + fib (n - 2)
  omega
  rw [show fib n = fib (n - 1 + 1) by congr; omega]
  rw [fib_add_one (by omega)]
  rw [show n - 1 - 1 = n - 2 by omega]
  ac_rfl

/--
3 F_n = F_{n+2} + F_{n-2}
This is Identity 7 (page 6) from Proofs that Really Count: The Art of Combinatorial Proof by Arthur T. Benjamin and Jennifer J. Quinn
-/
theorem three_mul_fib_n
  (n : ℕ)
  (hn : 2 ≤ n)
: 3 * Fibonacci n = Fibonacci (n + 2) + Fibonacci (n - 2) := by
  unfold Fibonacci
  rw [fib_add_one (by omega)]
  simp
  have := two_mul_fib_n n hn
  unfold Fibonacci at this
  omega

/--
4 F_n = F_{n+2} + F_n + F_{n-2}
This is Identity 18 (page 13) from Proofs that Really Count
-/
theorem four_mul_fib_n
  (n : ℕ)
  (hn : 2 ≤ n)
: 4 * fib n = fib (n + 2) + fib n + fib (n - 2) := by
  have := three_mul_fib_n n hn
  unfold Fibonacci at this
  omega
