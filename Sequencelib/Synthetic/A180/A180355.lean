/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180355 sequence
-/

namespace Sequence

@[OEIS := A180355, offset := 0, maxIndex := 29, derive := true]
def A180355 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + (2 + loop (λ (x _y) ↦ x * x) 2 x)) * x) + x

end Sequence