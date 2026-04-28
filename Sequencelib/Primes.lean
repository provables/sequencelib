/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# The prime numbers

This file introduces the prime numbers sequence, a core sequence on the OEIS.

## Implementation notes

The sequence is defined using `Nat.nth` and `Nat.Prime` from Mathlib. THe sequence
value theorems are proved using `Nat.nth_count`.

## Main results

- The basic definition and the first values of the sequence are given, up to `n=5`.


-/

namespace Sequence

open Nat

/--
The sequence of primes, starting at index 1 (i.e., `Primes 1 = 2`).
-/
@[OEIS := A000040, offset := 1]
noncomputable def Primes (n : ℕ) : ℕ := nth Nat.Prime (n - 1)

local macro "prove_primes" : tactic =>
  `(tactic| (
    unfold Primes
    apply count_injective (p := Nat.Prime)
    · apply nth_mem_of_infinite infinite_setOf_prime
    · norm_num
    · rw [count_nth_of_infinite]
      · decide
      · exact infinite_setOf_prime
  ))

theorem Primes_one : Primes 1 = 2 := by prove_primes
theorem Primes_two : Primes 2 = 3 := by prove_primes
theorem Primes_three : Primes 3 = 5 := by prove_primes
theorem Primes_four : Primes 4 = 7 := by prove_primes
theorem Primes_five : Primes 5 = 11 := by prove_primes
theorem Primes_six : Primes 6 = 13 := by prove_primes
theorem Primes_seven : Primes 7 = 17 := by prove_primes
theorem Primes_eight : Primes 8 = 19 := by prove_primes
theorem Primes_nine : Primes 9 = 23 := by prove_primes
theorem Primes_ten : Primes 10 = 29 := by prove_primes
theorem Primes_eleven : Primes 11 = 31 := by prove_primes
theorem Primes_twelve : Primes 12 = 37 := by prove_primes


end Sequence
