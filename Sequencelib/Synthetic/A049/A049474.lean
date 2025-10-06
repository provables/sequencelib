/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049474 sequence
-/

namespace Sequence

@[OEIS := A049474, offset := 0, maxIndex := 100, derive := true]
def A049474 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((((y * y) / (2 + x)) + 1) + y) + y) x 0 + 1) - x) / 2

end Sequence