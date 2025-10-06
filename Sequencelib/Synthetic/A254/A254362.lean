/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254362 sequence
-/

namespace Sequence

@[OEIS := A254362, offset := 0, maxIndex := 100, derive := true]
def A254362 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x + x) + x) x 1 + (2 + loop (λ (x _y) ↦ x + x) x 1) * 3

end Sequence