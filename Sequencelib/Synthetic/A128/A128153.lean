/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128153 sequence
-/

namespace Sequence

@[OEIS := A128153, offset := 0, maxIndex := 12, derive := true]
def A128153 (x : ℕ) : ℕ :=
  Int.toNat <| ((((2 + (loop (λ (_x _y) ↦ 2) x x + 1)) * (x + 1)) * (x + 1)) / 2) - x

end Sequence