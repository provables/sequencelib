/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta

/-!
# Powers of Primes

This file introduces the powers of primes integer sequence, 1, 2, 3, 4, 5, 7, 8, 9, ...

This is sequence [A000961](https://oeis.org/A000961), a core sequence in the OEIS.
-/

open Nat
namespace Sequence

open Classical

/--
A natural number, `n`, is a prime power if there exists a natural number, `e`, and prime, `p`,
such that n = p^e
-/
def PrimePower (n : ℕ) : Prop := ∃ p e : ℕ, n = p ^ e ∧ Nat.Prime p

/--
The sequence of prime powers, including 1 (i.e., `PowersOfPrimes 1 = 1`).
-/
@[OEIS := A000961, offset := 1]
noncomputable def PowersOfPrimes (n : ℕ) : ℕ := nth PrimePower (n - 1)

theorem not_PrimePower_zero : ¬PrimePower 0 := by
  simp [PrimePower]
  rintro p e h hp
  symm at h
  rw [Nat.pow_eq_zero] at h
  linarith [Nat.Prime.pos hp]

theorem PrimePower_one : PrimePower 1 := by
  use 2, 0
  simp [prime_two]

theorem PrimePower_two : PrimePower 2 := by
  use 2, 1
  simp [prime_two]

theorem PrimePower_three : PrimePower 3 := by
  use 3, 1
  simp [prime_three]

theorem PrimePower_four : PrimePower 4 := by
  use 2, 2
  simp [prime_two]

theorem PowersOfPrimes_one : PowersOfPrimes 1 = 1 := by
  simp [PowersOfPrimes]
  have h : count PrimePower 1 = 0 := count_of_forall_not (by simp [not_PrimePower_zero])
  rw [← h]
  apply nth_count PrimePower_one
