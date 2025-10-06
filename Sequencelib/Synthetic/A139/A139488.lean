/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139488 sequence
-/

namespace Sequence

@[OEIS := A139488, offset := 0, maxIndex := 41, derive := true]
def A139488 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ ((2 * (y * y)) + x) + y) (x - 1) 1 + x) + x

end Sequence