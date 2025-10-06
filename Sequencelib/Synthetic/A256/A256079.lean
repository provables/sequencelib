/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256079 sequence
-/

namespace Sequence

@[OEIS := A256079, offset := 0, maxIndex := 65, derive := true]
def A256079 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x _y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) 2 2) (x - (1 + (2 * 4))) 1 + x

end Sequence