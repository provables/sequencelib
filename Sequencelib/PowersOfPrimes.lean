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
The sequence of prime powers, including 1 (i.e., `PowersOfPrimes 1 = 1`).
-/
@[OEIS := A000961, offset := 1]
noncomputable def PowersOfPrimes : ℕ → ℕ
  | 0 => 1  -- dummy value, since sequence starts at offset 1
  | 1 => 1
  | n + 1 => nth IsPrimePow (n - 1)

theorem PowersOfPrimes_one : PowersOfPrimes 1 = 1 := rfl

theorem PowersOfPrimes_two : PowersOfPrimes 2 = 2 := by
  simp [PowersOfPrimes]
  rw [← (show count IsPrimePow 2 = 0 by decide)]
  refine nth_count (by decide)

theorem PowersOfPrimes_three : PowersOfPrimes 3 = 3 := by
  simp [PowersOfPrimes]
  rw [← (show count IsPrimePow 3 = 1 by decide)]
  exact nth_count (by decide)

theorem PowersOfPrimes_four : PowersOfPrimes 4 = 4 := by
  simp [PowersOfPrimes]
  rw [← (show count IsPrimePow 4 = 2 by decide)]
  exact nth_count (by decide)

theorem PowersOfPrimes_five : PowersOfPrimes 5 = 5 := by
  simp [PowersOfPrimes]
  rw [← (show count IsPrimePow 5 = 3 by decide)]
  exact nth_count (by decide)

theorem PowersOfPrimes_six : PowersOfPrimes 6 = 7 := by
  simp [PowersOfPrimes]
  rw [← (show count IsPrimePow 7 = 4 by decide)]
  exact nth_count (by decide)
