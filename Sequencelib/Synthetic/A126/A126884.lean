/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126884 sequence
-/

namespace Sequence

@[OEIS := A126884, offset := 0, maxIndex := 16, derive := true]
def A126884 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x) x 1

end Sequence