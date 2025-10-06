/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178936 sequence
-/

namespace Sequence

@[OEIS := A178936, offset := 0, maxIndex := 100, derive := true]
def A178936 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y) ↦ (x + x) + x) x 2 + loop (λ (x _y) ↦ x + x) x 1) + loop (λ (x _y) ↦ x + x) x 1) +
    loop (λ (x _y) ↦ x + x) x 1) /
  (1 + 4)

end Sequence