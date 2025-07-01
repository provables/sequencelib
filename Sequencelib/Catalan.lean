/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# Catalan numbers
-/

namespace Sequence

/--
The Catalan numbers, using Mathlib's definition.
-/
@[OEIS := A000108, offset := 0]
def Catalan : ℕ → ℕ := catalan

theorem Catalan_zero : Catalan 0 = 1 := by simp [Catalan]

theorem Catalan_one : Catalan 1 = 1 := by simp [Catalan]

theorem Catalan_two : Catalan 2 = 2 := by
  simp [Catalan, catalan]

theorem Catalan_three : Catalan 3 = 5 := by
  rw [Catalan]
  exact catalan_three

/--
The Catalan numbers, defined using the central binomial coefficient.
-/
@[OEIS := A000108, offset := 0]
def Catalan₁ (n : ℕ) : ℕ := (Nat.centralBinom n) / (n + 1)

theorem Catalan_eq_Catalan₁ : Catalan = Catalan₁ :=
  funext (catalan_eq_centralBinom_div ·)

theorem Catalan₁_four : Catalan₁ 4 = 14 := by decide

theorem Catalan₁_five : Catalan₁ 5 = 42 := by decide

theorem Catalan₁_six : Catalan₁ 6 = 132 := by decide
