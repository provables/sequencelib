/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055845 sequence
-/

namespace Sequence

@[OEIS := A055845, offset := 0, maxIndex := 100, derive := true]
def A055845 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((2 * (x + y)) + x)) (λ (x y) ↦ x + y) x 1 2

end Sequence