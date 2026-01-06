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

/--
A step in the Python algorithm for Catalan numbers from the OEIS entry.
-/
def Step : ℕ × ℕ → ℕ × ℕ :=
  fun ⟨i, x⟩ => ⟨i + 1, x * (4 * i + 2) / (i + 2)⟩

private theorem Step_fst_eq_fst (n m : ℕ) : (Nat.iterate Step n (0, m) |>.fst) = n := by
  induction n with
  | zero => simp
  | succ n h =>
    rw [Function.iterate_succ_apply', (show Step^[n] _ = (_, _) by rfl), h, Step]

/--
Catalan numbers defined through a translation of the Python algorithm from the OEIS entry.
-/
@[OEIS := A000108, offset := 0]
def Catalan₂ (n : ℕ) : ℕ :=
  Nat.iterate Step n (0, 1) |>.snd

theorem Catalan₂_recurse (n : ℕ) : Catalan₂ (n + 1) = Catalan₂ n * (4 * n + 2) / (n + 2) := by
  unfold Catalan₂
  nth_rw 1 [Function.iterate_succ_apply', (show Step^[n] _ = (_, _) by rfl), Step_fst_eq_fst, Step]

theorem Catalan₁_recurse (n : ℕ) : Catalan₁ (n + 1) = Catalan₁ n * (4 * n + 2) / (n + 2) := by
  simp [Catalan₁]
  congr
  apply_fun ((n + 1) * ·)
  · eta_reduce
    rw [Nat.succ_mul_centralBinom_succ, ← mul_assoc,
      (show (n + 1) * (n.centralBinom / (n + 1)) = n.centralBinom by
        exact Nat.mul_div_cancel' <| Nat.succ_dvd_centralBinom n)]
    ring
  · exact mul_right_injective₀ (by linarith)

theorem Catalan₂_eq_Catalan₁ : Catalan₂ = Catalan₁ := by
  ext n
  induction n with
  | zero => simp [Catalan₂, Catalan₁]
  | succ _ ih =>
    simp [Catalan₂_recurse, Catalan₁_recurse, ih]
