/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139806 sequence
-/

namespace Sequence

@[OEIS := A139806, offset := 0, maxIndex := 33, derive := true]
def A139806 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y) ↦ (((y % 4) + 1) + x) + x) x 1 / 2) + 1) / 2) * 2) + 1

end Sequence