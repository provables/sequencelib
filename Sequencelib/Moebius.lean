/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# The Möbius function

The Möbius function is defined by

$$
\mu(n) =
\begin{cases}
1, & \text{if}\ n = 1, \\
(-1)^k, & \text{if}\ n\ \text{is the product of}\ k\ \text{distinct primes,} \\
0, & \text{if}\ n\ \text{is divisible by a square}\ > 1.
\end{cases}
$$
-/

@[OEIS := A008683, offset := 1]
def Moebius (n : ℕ) : ℤ := ArithmeticFunction.moebius n

theorem Moebius_one : Moebius 1 = 1 := by
  oeis_tactic

theorem Moebius_two : Moebius 2 = -1 := by
  simp [Moebius, Nat.squarefree_two, ArithmeticFunction.cardFactors]

theorem Moebius_three : Moebius 3 = -1 := by
  simp [Moebius, ArithmeticFunction.moebius]
  have h := (Nat.squarefree_iff_nodup_primeFactorsList (show 3 ≠ 0 by omega))
  have h2 : Nat.primeFactorsList 3 = [3] := by refine Nat.primeFactorsList_prime (by decide)
  rw [h2] at h
  simp at h
  simp [h, ArithmeticFunction.cardFactors, h2]

theorem Moebius_four : Moebius 4 = 0 := by
  oeis_tactic

theorem Moebius_five : Moebius 5 = -1 := by
  simp [Moebius, ArithmeticFunction.moebius]
  have h := (Nat.squarefree_iff_nodup_primeFactorsList (show 5 ≠ 0 by omega))
  have h2 : Nat.primeFactorsList 5 = [5] := by refine Nat.primeFactorsList_prime (by decide)
  rw [h2] at h
  simp at h
  simp [h, ArithmeticFunction.cardFactors, h2]
