/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097833 sequence
-/

namespace Sequence

@[OEIS := A097833, offset := 0, maxIndex := 15, derive := true]
def A097833 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((loop (λ (x _y) ↦ 2 * (2 + x)) 2 2 * x) - y)) (λ (x _y) ↦ x) x 1 0

end Sequence