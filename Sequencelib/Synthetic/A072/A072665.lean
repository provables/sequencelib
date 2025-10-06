/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072665 sequence
-/

namespace Sequence

@[OEIS := A072665, offset := 0, maxIndex := 2, derive := true]
def A072665 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y) ↦ (loop (λ (x y) ↦ x + y) ((x * 2) * 2) 0 * 2) - x) x 1 - x) / 2) + 1) + 1

end Sequence