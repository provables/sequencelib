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
