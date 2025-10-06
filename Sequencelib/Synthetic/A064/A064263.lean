/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064263 sequence
-/

namespace Sequence

@[OEIS := A064263, offset := 0, maxIndex := 100, derive := true]
def A064263 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ (x * x) + x) 2 2 * x) - x) % (((1 + (2 * 4)) + 1) * 3)

end Sequence