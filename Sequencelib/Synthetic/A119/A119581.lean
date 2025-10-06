/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A119581 sequence
-/

namespace Sequence

@[OEIS := A119581, offset := 0, maxIndex := 24, derive := true]
def A119581 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (((2 * (x * y)) - x) * 2) / y) x 1 * x) / 2) * (2 + x)

end Sequence