/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

/-!
# Triangular numbers

-/

namespace Sequence

/--
Triangular numbers:
$$
\mathrm{Triangular}(n) = \frac{n (n + 1)}{2}.
$$
-/
@[OEIS := A000217]
def Triangular (n : ℕ) : ℕ := n * (n + 1) / 2


/-
A definition of the Triangular numbers designed to resemble an implementation in Python
-/
@[OEIS := A000217]
def Triangular2 (n : ℕ) : ℕ := Id.run do
  let mut result : ℕ := 0
  let mut x := 1
  let mut y := 1
  for _ in [1:(n+1)] do
    result := x
    x := x + y + 1
    y := y + 1
  result

theorem Triangular2_eq_Triangular : Triangular2 = Triangular := by
  ext n
  simp [Triangular2, Triangular]
  reduce
  generalize h : (fun (b : MProd ℕ (MProd ℕ ℕ)) (a : ℕ)
    ↦ (⟨b.2.1, ⟨(b.2.1.add b.2.2).succ, b.2.2.succ⟩⟩ : MProd ℕ (MProd ℕ ℕ))) = g at *
  dsimp at h ⊢
  suffices h : List.foldl g ⟨0, 1, 1⟩ (List.range' 1 n 1) =
      ⟨(n * n + n) / 2, (n * n + n) / 2 + n + 1, n + 1⟩ by
    rw [h]
    reduce
    rfl
  induction n with
  | zero => simp
  | succ n ih =>
    rw [List.range'_1_concat, List.foldl_concat, ih, ← h]
    simp
    refine Eq.symm (Nat.div_eq_of_eq_mul_right (by linarith) ?_)
    rw [mul_add (a := 2), mul_add (a := 2), Nat.mul_div_cancel']
    linarith
    rw [(show n * n + n = n * (n + 1) by linarith)]
    by_cases he : Even n
    · refine Nat.dvd_mul_right_of_dvd (even_iff_two_dvd.mp he) (n + 1)
    · refine Nat.dvd_mul_left_of_dvd ?_ n
      rw [← Nat.even_add_one] at he
      exact even_iff_two_dvd.mp he

theorem Triangular_zero : Triangular 0 = 0 := rfl
theorem Triangular_one : Triangular 1 = 1 := rfl
theorem Triangular_two : Triangular 2 = 3 := rfl
theorem Triangular_three : Triangular 3 = 6 := rfl
theorem Triangular_four : Triangular 4 = 10 := rfl
theorem Triangular_five : Triangular 5 = 15 := rfl

/--
Triangular numbers from the binomial coefficient:
$$
\mathrm{Triangular}(n) = \binom{n+1}{2}
$$
-/
@[OEIS := A000217]
def TriangularChooseTwo (n : ℕ) : ℕ := (n + 1).choose 2

theorem Triangular_eq_TriangularChooseTwo : Triangular = TriangularChooseTwo := by
  ext n
  simp [Triangular, TriangularChooseTwo, Nat.choose_two_right (n + 1)]
  congr 1
  ring
