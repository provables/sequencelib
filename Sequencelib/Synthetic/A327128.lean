/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A327128 sequence
-/

namespace Sequence

@[OEIS := A327128, offset := 0, maxIndex := 4, derive := true]
def A327128 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 2 * y) (λ (x _y) ↦ x) ((x - 1) - 1) 1 x * x

end Sequence