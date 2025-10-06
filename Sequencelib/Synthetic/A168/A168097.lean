/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168097 sequence
-/

namespace Sequence

@[OEIS := A168097, offset := 0, maxIndex := 54, derive := true]
def A168097 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((loop (λ (x _y) ↦ x * x) 2 2 - 1) / (1 + x)) + x) (1 + x) 2

end Sequence