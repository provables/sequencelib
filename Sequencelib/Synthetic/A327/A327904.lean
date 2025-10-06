/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A327904 sequence
-/

namespace Sequence

@[OEIS := A327904, offset := 0, maxIndex := 96, derive := true]
def A327904 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (x - (y / 2)) + y) y 0 * x) x 1

end Sequence