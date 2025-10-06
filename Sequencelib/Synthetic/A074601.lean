/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A074601 sequence
-/

namespace Sequence

@[OEIS := A074601, offset := 0, maxIndex := 20, derive := true]
def A074601 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (1 + loop (λ (x _y) ↦ (x + x) + x) x 1)

end Sequence