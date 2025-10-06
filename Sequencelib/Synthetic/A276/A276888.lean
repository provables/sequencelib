/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A276888 sequence
-/

namespace Sequence

@[OEIS := A276888, offset := 1, maxIndex := 58, derive := true]
def A276888 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ ((y * y) / ((2 + x) + y)) + y) x 0 * 2) + 1) + x

end Sequence