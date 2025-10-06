/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016133 sequence
-/

namespace Sequence

@[OEIS := A016133, offset := 0, maxIndex := 50, derive := true]
def A016133 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ (x + x) + x) (y + y) 1 + x) + x) x 1

end Sequence