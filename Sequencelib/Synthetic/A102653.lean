/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102653 sequence
-/

namespace Sequence

@[OEIS := A102653, offset := 0, maxIndex := 31, derive := true]
def A102653 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (((y + (y / 2)) % 2) + x) + x) x 1 * 2) * 2

end Sequence