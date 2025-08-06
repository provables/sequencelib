/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta
import Sequencelib.Defs

/--
Pascal triangle:

$$
\text{Pascal}(n, k) = {n \choose k}.
$$
-/
def PascalTriangle (n k : ℕ) : ℕ := Nat.choose n k

/--
Pascal triangle defined from the binomial coefficient.
-/
@[OEIS := A007318, derive := true, maxIndex := 20]
def Pascal (n : ℕ) : ℕ :=
  let (k, l) := TriangleRows n
  PascalTriangle k l

/--
Pascal triangle as a translation from the Python code in the OEIS entry.
-/
@[OEIS := A007318]
def Pascal₂ (n : ℕ) : ℕ :=
  let k := 2 * (n + 1)
  let m := Nat.sqrt k
  let r := m - if k ≤ m * (m + 1) then 1 else 0
  Nat.choose r (n - Nat.choose (r + 1) 2)

#eval Pascal₂ 13

theorem foo : Pascal₂ 13 = 4 := by
  simp [Pascal₂]
  reduce
  rfl

#eval TriangleRows 7

theorem bar : Pascal₂ = Pascal := by
  ext n
  simp [Pascal₂, Pascal, PascalTriangle, TriangleRows, Triangle]
  congr
  · sorry
  · sorry
