/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098808 sequence
-/

namespace Sequence

@[OEIS := A098808, offset := 0, maxIndex := 23, derive := true]
def A098808 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x _y) ↦ x + x) ((2 + (2 * 4)) + x) 1 - 2) - 2) - 2) * 2) + 1

end Sequence