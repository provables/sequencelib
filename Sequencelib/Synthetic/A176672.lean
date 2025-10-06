/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176672 sequence
-/

namespace Sequence

@[OEIS := A176672, offset := 0, maxIndex := 64, derive := true]
def A176672 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x / (2 - (x % 2))) 2 (((x + x) + x) + 1)

end Sequence