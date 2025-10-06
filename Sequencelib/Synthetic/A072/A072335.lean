/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072335 sequence
-/

namespace Sequence

@[OEIS := A072335, offset := 0, maxIndex := 25, derive := true]
def A072335 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ 1 + ((2 * (x + x)) - y)) (λ (x _y) ↦ x) y 1 0 - x) x 1

end Sequence