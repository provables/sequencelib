/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048721 sequence
-/

namespace Sequence

@[OEIS := A048721, offset := 0, maxIndex := 12, derive := true]
def A048721 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ x * y) (λ (x _y) ↦ x) y 2 1 + x) x 0 / 2

end Sequence