/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119582 sequence
-/

namespace Sequence

@[OEIS := A119582, offset := 0, maxIndex := 23, derive := true]
def A119582 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) x 1 / loop (λ (x y) ↦ x * y) x 2) * (1 + x)) * x) * x

end Sequence