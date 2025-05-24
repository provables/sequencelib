/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta

/-!
# Mersenne Exponents

This file introduces the Mersenne Exponents, i.e., primes p such that 2^p - 1 is prime,
and the associated sequence: 2, 3, 5, 7, 13, 17, ...
In this case, 2^p - 1 is called a Mersenne prime.

This is sequence [A000043](https://oeis.org/A000043), a core sequence in the OEIS.
-/

open Nat
namespace Sequence

open Classical

#check Decidable

/--
A prime number, `p`, is a Mersenne exponent if 2^p - 1 is also prime. In this case,
the 2^p - 1 is called a Mersenne prime.
-/
def IsMersenneExponent (p : ℕ) : Prop := Nat.Prime p ∧ Nat.Prime (2^p - 1)

#check @Nat.prime_of_pow_sub_one_prime 2

theorem power_sub_one_prime_implies_prime (p : ℕ) (h2: Nat.Prime (2^p - 1))
    : Nat.Prime p := by
  have h1: p ≠ 1 := by
    by_contra h
    simp [h] at h2
    exact Nat.not_prime_one h2
  let T := (@Nat.prime_of_pow_sub_one_prime 2 p h1 h2).right
  exact T

theorem mersenne_exp_if_prime (p : ℕ) (h: Nat.Prime (2^p - 1)) : IsMersenneExponent p := by
  unfold IsMersenneExponent
  constructor
  · apply power_sub_one_prime_implies_prime
    exact h
  · exact h

instance {p : ℕ} : Decidable (IsMersenneExponent p) := by
  unfold IsMersenneExponent
  apply instDecidableAnd

theorem MersenneExponent_two : IsMersenneExponent 2 := by decide

theorem MersenneExponent_three : IsMersenneExponent 3 := by decide

theorem MersenneExponent_five : IsMersenneExponent 5 := by decide

/--
The sequence of MersenneExponents.
-/
@[OEIS := A000043, offset := 1]
noncomputable def MersenneExponents (n : ℕ) : ℕ := nth IsMersenneExponent (n - 1)

theorem MersenneExponents_one : MersenneExponents 1 = 2 := by
  unfold MersenneExponents
  simp
  have h1: count IsMersenneExponent 2 = 0 := by decide
  let T := nth_count MersenneExponent_two
  rw[h1] at T
  exact T
