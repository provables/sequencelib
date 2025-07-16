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

/--
`n`-th cell in a lower triangle, row by row.
-/
def TriangleRows (n : ℕ) : ℕ × ℕ := Triangle^[n] (0, 0)
