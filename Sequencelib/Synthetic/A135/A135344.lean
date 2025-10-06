/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135344 sequence
-/

namespace Sequence

@[OEIS := A135344, offset := 0, maxIndex := 100, derive := true]
def A135344 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ (x + x) + x) x 1 / (loop (λ (x y) ↦ (x * x) + y) 2 2 + 1)) * 2) + 1

end Sequence