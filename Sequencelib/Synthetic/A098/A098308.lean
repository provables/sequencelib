/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098308 sequence
-/

namespace Sequence

@[OEIS := A098308, offset := 0, maxIndex := 19, derive := true]
def A098308 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ (2 + (2 * ((2 * (x + x)) + x))) - y) (λ (x _y) ↦ x) x 0 1 * 2) + 1) / 3

end Sequence