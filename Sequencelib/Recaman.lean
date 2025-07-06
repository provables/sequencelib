/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# Recamán's sequence

The Recamán's sequence appears in the logo of the [OEIS](https://oeis.org).
-/

@[OEIS := A005132, offset := 0]
def Recaman : ℕ → ℕ
  | 0 => 0
  | n + 1 =>
    let x := Recaman n - (n + 1)
    if 0 ≤ x ∧ ∀ i : Fin (n + 1), x ≠ Recaman i then
      x
    else
      Recaman n + (n + 1)
termination_by n => n
decreasing_by
  omega
  any_goals try exact i.isLt
  exact a.isLt

@[simp]
theorem Recaman_zero : Recaman 0 = 0 := by simp only [Recaman]

@[simp]
theorem Recaman_one : Recaman 1 = 1 := by simp [Recaman]

@[simp]
theorem Recaman_two : Recaman 2 = 3 := by
  simp [Recaman]
  use 0
  exact Recaman_zero.symm

@[simp]
theorem Recaman_three : Recaman 3 = 6 := by
  simp [Recaman]
  use 0
  exact Recaman_zero.symm

@[simp]
theorem Recaman_four : Recaman 4 = 2 := by
  simp [Recaman]
  intro x
  fin_cases x
  all_goals simp

@[simp]
theorem Recaman_five : Recaman 5 = 7 := by
  simp [Recaman]
  use 0
  exact Recaman_zero.symm

@[simp]
theorem Recaman_six : Recaman 6 = 13 := by
  simp [Recaman]
  use 1
  exact Recaman_one.symm

@[simp]
theorem Recaman_seven : Recaman 7 = 20 := by
  simp [Recaman]
  use 3
  exact Recaman_three.symm

theorem Recaman_eight : Recaman 8 = 12 := by
  simp [Recaman]
  intro x
  fin_cases x
  all_goals simp
