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

theorem Primes_one : Primes 1 = 2 := nth_count prime_two
theorem Primes_two : Primes 2 = 3 := nth_count prime_three
theorem Primes_three : Primes 3 = 5 := nth_count prime_five
theorem Primes_four : Primes 4 = 7 := nth_count prime_seven
theorem Primes_five : Primes 5 = 11 := nth_count prime_eleven

end Sequence
