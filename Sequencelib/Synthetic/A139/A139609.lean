/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139609 sequence
-/

namespace Sequence

@[OEIS := A139609, offset := 0, maxIndex := 47, derive := true]
def A139609 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ (2 * ((x + x) + x)) + y) 2 x

end Sequence