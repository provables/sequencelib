/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089485 sequence
-/

namespace Sequence

@[OEIS := A089485, offset := 1, maxIndex := 5, derive := true]
def A089485 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ ((2 * (y + y)) - x) + y) ((x * x) + 1) x + x * x) - 2

end Sequence