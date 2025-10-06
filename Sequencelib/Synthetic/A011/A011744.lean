/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011744 sequence
-/

namespace Sequence

@[OEIS := A011744, offset := 0, maxIndex := 80, derive := true]
def A011744 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((loop (λ (x _y) ↦ x / (1 + (x % 3))) x x / 2) / 2) + 1) / 2) / 2) + 2) / 2) / 2

end Sequence