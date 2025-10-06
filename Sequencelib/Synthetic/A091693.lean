/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091693 sequence
-/

namespace Sequence

@[OEIS := A091693, offset := 0, maxIndex := 17, derive := true]
def A091693 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ 1 + (2 * ((2 * (x + x)) + x))) x 0 * x) + 1

end Sequence