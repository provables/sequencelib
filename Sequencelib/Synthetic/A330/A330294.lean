/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330294 sequence
-/

namespace Sequence

@[OEIS := A330294, offset := 0, maxIndex := 4, derive := true]
def A330294 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ ((loop (λ (x y) ↦ ((y + y) * y) + x) x 1 + x) / 2) + 1) x 0 - 1) / 2) + 2

end Sequence