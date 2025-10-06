/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A309147 sequence
-/

namespace Sequence

@[OEIS := A309147, offset := 0, maxIndex := 3, derive := true]
def A309147 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ 2 * loop (λ (x y) ↦ (y + x) + x) y x) x 2 / (1 + x)) - 1

end Sequence