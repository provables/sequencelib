/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166067 sequence
-/

namespace Sequence

@[OEIS := A166067, offset := 0, maxIndex := 100, derive := true]
def A166067 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x _y) ↦ 2 + (2 + (x * x))) 2 2 + y) (λ (x y) ↦ x + y) x 1 1

end Sequence