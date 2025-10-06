/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169077 sequence
-/

namespace Sequence

@[OEIS := A169077, offset := 0, maxIndex := 16, derive := true]
def A169077 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x _y) ↦ x * x) 2 2 - 1 % x) * x) x 1

end Sequence