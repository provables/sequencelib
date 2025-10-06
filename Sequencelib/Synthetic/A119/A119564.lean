/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119564 sequence
-/

namespace Sequence

@[OEIS := A119564, offset := 0, maxIndex := 8, derive := true]
def A119564 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) x 2 - loop (λ (x _y) ↦ x + x) x 1) + 1

end Sequence