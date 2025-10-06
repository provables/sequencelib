/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212988 sequence
-/

namespace Sequence

@[OEIS := A212988, offset := 0, maxIndex := 55, derive := true]
def A212988 (x : ℕ) : ℕ :=
  Int.toNat <| ((x / 2) / 2) + loop (λ (x y) ↦ x + y) x 2 / 2

end Sequence