/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166927 sequence
-/

namespace Sequence

@[OEIS := A166927, offset := 0, maxIndex := 16, derive := true]
def A166927 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) (x + x) (loop (λ (x _y) ↦ 1 + (2 * (x + x))) x 2) / 2

end Sequence