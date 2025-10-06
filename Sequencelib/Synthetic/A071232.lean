/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071232 sequence
-/

namespace Sequence

@[OEIS := A071232, offset := 0, maxIndex := 30, derive := true]
def A071232 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y) ↦ x * x) 2 x + x) / 2) * x) * x

end Sequence