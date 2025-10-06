/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A261544 sequence
-/

namespace Sequence

@[OEIS := A261544, offset := 0, maxIndex := 100, derive := true]
def A261544 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) 3 x) x 1

end Sequence