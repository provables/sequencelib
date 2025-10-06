/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A319491 sequence
-/

namespace Sequence

@[OEIS := A319491, offset := 5, maxIndex := 9, derive := true]
def A319491 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) ((x * 2) + 1) 1 0 * ((x * x) + x)) + 1) / (x + 2)) - x

end Sequence