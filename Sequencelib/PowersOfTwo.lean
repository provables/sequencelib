/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

namespace Sequence

/-!
Powers of 2: `a(n) = 2^n`.
-/
@[OEIS := A000079, maxIndex := 10, derive := true]
def PowersOfTwo (n : ℕ) : ℕ := 2 ^ n
