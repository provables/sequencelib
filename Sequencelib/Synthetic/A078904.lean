/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078904 sequence
-/

namespace Sequence

@[OEIS := A078904, offset := 0, maxIndex := 23, derive := true]
def A078904 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 * (2 + (x + x))) x 0 - x

end Sequence