/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282901 sequence
-/

namespace Sequence

@[OEIS := A282901, offset := 0, maxIndex := 4, derive := true]
def A282901 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ x + x) x (loop (λ (x y) ↦ (x + x) + y) x 2) / 2) + 1) / 2

end Sequence