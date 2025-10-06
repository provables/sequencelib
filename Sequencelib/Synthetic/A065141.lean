/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065141 sequence
-/

namespace Sequence

@[OEIS := A065141, offset := 0, maxIndex := 98, derive := true]
def A065141 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (loop (λ (x y) ↦ x * y) (x + x) (1 + x))

end Sequence