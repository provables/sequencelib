/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033312 sequence
-/

namespace Sequence

@[OEIS := A033312, offset := 0, maxIndex := 22, derive := true]
def A033312 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x 1 - 1

end Sequence