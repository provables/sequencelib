/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121147 sequence
-/

namespace Sequence

@[OEIS := A121147, offset := 3, maxIndex := 7, derive := true]
def A121147 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop (λ (x _y) ↦ (2 * ((2 * (x + x)) + 1)) - x) (x - 1) 1 - x) / 2

end Sequence