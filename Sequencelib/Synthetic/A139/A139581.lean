/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139581 sequence
-/

namespace Sequence

@[OEIS := A139581, offset := 0, maxIndex := 41, derive := true]
def A139581 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (loop (λ (x y) ↦ x + y) 4 x * x)) - x

end Sequence