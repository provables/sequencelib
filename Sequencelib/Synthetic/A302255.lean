/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A302255 sequence
-/

namespace Sequence

@[OEIS := A302255, offset := 0, maxIndex := 71, derive := true]
def A302255 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y - (((-(x / 2))) / 2)) / 2) + x % 2) (1 + x) 0

end Sequence