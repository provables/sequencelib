/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A205086 sequence
-/

namespace Sequence

@[OEIS := A205086, offset := 0, maxIndex := 97, derive := true]
def A205086 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ 2 * (loop (λ (x _y) ↦ 1 + (x + x)) 2 x + x)) (1 + x) 1 - 1) - 2) - 2

end Sequence