/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027383 sequence
-/

namespace Sequence

@[OEIS := A027383, offset := 0, maxIndex := 100, derive := true]
def A027383 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + (y + y)) (λ (x _y) ↦ x) x 1 0

end Sequence