/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A288556 sequence
-/

namespace Sequence

@[OEIS := A288556, offset := 0, maxIndex := 4, derive := true]
def A288556 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ loop (λ (x y) ↦ x + y) x 2 - y) (λ (x _y) ↦ x) x 1 0 / 2) + 1) - x

end Sequence