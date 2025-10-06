/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176743 sequence
-/

namespace Sequence

@[OEIS := A176743, offset := 0, maxIndex := 50, derive := true]
def A176743 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((((2 + x) * (2 * (x % (3 + 1)))) - 1) + 2) * (x % 2)) + 1) / 2) + 2) + x) / 2

end Sequence