/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib

/--
Next cell in a lower triangle, row by row.

Given (row, column) in a lower triangle:
```
*
* *
* * *
* * * *
```
return the row and column of the next entry, when reading by rows.
-/
def Triangle : ℕ × ℕ → ℕ × ℕ :=
  fun (a, b) => if b < a then (a, b + 1) else (a + 1, 0)

theorem two_dvd_prod_succ (n : ℕ) : 2 ∣ n * (n + 1) := by
  by_cases he : Even n
  · exact Nat.dvd_mul_right_of_dvd (even_iff_two_dvd.mp he) (n + 1)
  · exact Nat.dvd_mul_left_of_dvd (c := n) <| even_iff_two_dvd.mp <| Nat.even_add_one.mpr he

#check Nat.two_le_iff
theorem foo (n i j : ℕ) : Triangle^[n] (0, 0) = (i, j) ↔ (i * (i + 1)) / 2 + j = n ∧ j ≤ i := by
  induction n generalizing i j with
  | zero =>
    simp
    constructor
    · rintro ⟨hi, hj⟩
      simp [← hi, ← hj]
    · rintro ⟨⟨haa, hab⟩, hb⟩
      constructor
      symm
      · by_contra h
        push_neg at h
        have := Nat.pos_of_ne_zero h
        nlinarith [this, haa]
      · exact hab.symm
  | succ n ih =>
    constructor
    ·
      intro h

      sorry
    · sorry
/--
`n`-th cell in a lower triangle, row by row.
-/
def TriangleRows (n : ℕ) : ℕ × ℕ := Triangle^[n] (0, 0)
