/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195254 sequence
-/

namespace Sequence

@[OEIS := A195254, offset := 0, maxIndex := 100, derive := true]
def A195254 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ x + x) y 1 - x) + x * y) x 1

end Sequence