/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153466 sequence
-/

namespace Sequence

@[OEIS := A153466, offset := 0, maxIndex := 50, derive := true]
def A153466 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) ((((2 + x) * 2) + 1) + 2) 0 1 * ((2 * 4) + 1)) * 2) - 2

end Sequence