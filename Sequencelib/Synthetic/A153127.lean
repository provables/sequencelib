/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153127 sequence
-/

namespace Sequence

@[OEIS := A153127, offset := 0, maxIndex := 41, derive := true]
def A153127 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (x + x)) * (loop (λ (x _y) ↦ 2 + (x + x)) 2 x + x)

end Sequence