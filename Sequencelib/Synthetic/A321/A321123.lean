/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A321123 sequence
-/

namespace Sequence

@[OEIS := A321123, offset := 0, maxIndex := 33, derive := true]
def A321123 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (((1 + x) * (x + x)) + loop (λ (x _y) ↦ x + x) x 1)

end Sequence