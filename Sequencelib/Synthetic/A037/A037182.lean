/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037182 sequence
-/

namespace Sequence

@[OEIS := A037182, offset := 0, maxIndex := 14, derive := true]
def A037182 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) - x) 1 (loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) x 1) / 2

end Sequence