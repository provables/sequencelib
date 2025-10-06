/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155595 sequence
-/

namespace Sequence

@[OEIS := A155595, offset := 0, maxIndex := 17, derive := true]
def A155595 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x + x) x 1 - 1) + loop (λ (x _y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) 2 2 * x) x 1

end Sequence