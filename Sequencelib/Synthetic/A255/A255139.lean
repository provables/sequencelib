/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255139 sequence
-/

namespace Sequence

@[OEIS := A255139, offset := 0, maxIndex := 21, derive := true]
def A255139 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x 1 - loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1

end Sequence