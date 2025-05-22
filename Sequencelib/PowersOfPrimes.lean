/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
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

def PrimePower (n : ℕ ) : Prop := ∃ p e : ℕ, n = p^e ∧ Nat.Prime p

@[OEIS := A000961, offset := 1]
noncomputable def PowersOfPrimes (n : ℕ) : ℕ := nth PrimePower (n - 1)

theorem PrimePower_one : PrimePower 1 := by
  use 2, 0
  constructor
  · simp
  · exact prime_two

theorem PrimePower_two : PrimePower 2 := by
  use 2, 1
  constructor
  · simp
  · exact prime_two

theorem PrimePower_three : PrimePower 3 := by
  use 3, 1
  constructor
  · simp
  · exact prime_three

theorem PrimePower_four : PrimePower 4 := by
  use 2, 2
  constructor
  · simp
  · exact prime_two

#check DecidablePred
#check Decidable

#check nth_count PrimePower_one


theorem PowersOfPrimes_one : PowersOfPrimes 1 = 1 := by
  unfold PowersOfPrimes
  simp
  have h: count PrimePower 1 = 0 := by
    refine count_of_forall_not ?_
    simp
    by_contra h
    obtain ⟨ p, he ⟩ := h
    obtain ⟨ e, hh ⟩ := he
    obtain ⟨ hhp, hhe ⟩ := hh
    apply Nat.Prime.pos at hhe
    symm at hhp
    rw [Nat.pow_eq_zero] at hhp
    let g := hhp.left
    linarith
  rw [← h]
  apply nth_count PrimePower_one
