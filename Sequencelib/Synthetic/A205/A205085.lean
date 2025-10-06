/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A205085 sequence
-/

namespace Sequence

@[OEIS := A205085, offset := 0, maxIndex := 99, derive := true]
def A205085 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ (1 + 4) * (1 + (x + x))) (1 + x) 1 - 2) - 2

end Sequence