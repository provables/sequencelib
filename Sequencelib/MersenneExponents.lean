/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
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

## Implementation notes

We follow the definition of the Mersenne Exponents seqeunce given on the OEIS which
requires `p` and `2^p - 1` to be prime, but we prove that the second hypothesis is
sufficient since it implies the first.

## Main results

- The basic definition of the sequence is given, and we show that if `2^p - 1` is prime,
  then `p` is a Mersenne exponent.
- We prove that 2, 3, 5, and 7 are Mersenne exponents.
- The first values of the sequence up to `n=4` are given.
-/

open Nat
namespace Sequence

open Classical

/--
A prime number, `p`, is a Mersenne exponent if `2^p - 1` is also prime. In this case,
the `2^p - 1` is called a Mersenne prime.
-/
def IsMersenneExponent (p : ℕ) : Prop := Nat.Prime p ∧ Nat.Prime (2 ^ p - 1)

/--
For a Natural number `p`, if `2^p - 1` is prime then `p` is prime.
-/
theorem power_sub_one_prime_implies_prime (p : ℕ) (h2: Nat.Prime (2 ^ p - 1)) :
    Nat.Prime p := by
  have h1: p ≠ 1 := by
    by_contra h
    simp [h] at h2
    exact Nat.not_prime_one h2
  let T := (@Nat.prime_of_pow_sub_one_prime 2 p h1 h2).right
  exact T

/--
For a Natural number `p`, if `2^p - 1` is prime, then `p` is a Mersenne exponent.
-/
theorem mersenne_exp_if_prime (p : ℕ) (h: Nat.Prime (2 ^ p - 1)) : IsMersenneExponent p := by
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

theorem MersenneExponent_seven : IsMersenneExponent 7 := by decide

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

theorem MersenneExponents_two : MersenneExponents 2 = 3 := by
  unfold MersenneExponents
  simp
  have h1: count IsMersenneExponent 3 = 1 := by decide
  let T := nth_count MersenneExponent_three
  rw[h1] at T
  exact T

theorem MersenneExponents_three : MersenneExponents 3 = 5 := by
  unfold MersenneExponents
  simp
  have h1: count IsMersenneExponent 5 = 2 := by decide
  let T := nth_count MersenneExponent_five
  rw[h1] at T
  exact T

theorem MersenneExponents_four : MersenneExponents 4 = 7 := by
  unfold MersenneExponents
  simp
  have h1: count IsMersenneExponent 7 = 3 := by decide
  let T := nth_count MersenneExponent_seven
  rw[h1] at T
  exact T
