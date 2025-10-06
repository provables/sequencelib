/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083713 sequence
-/

namespace Sequence

@[OEIS := A083713, offset := 0, maxIndex := 19, derive := true]
def A083713 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ 1 + (x + x)) 2 (x + x)) x 0

end Sequence