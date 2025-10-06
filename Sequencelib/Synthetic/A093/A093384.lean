/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093384 sequence
-/

namespace Sequence

@[OEIS := A093384, offset := 1, maxIndex := 31, derive := true]
def A093384 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((2 + (2 - ((x / 2) % 2))) * 2) * 2) / (x + 1)) + x) + 2) + x) % 2

end Sequence