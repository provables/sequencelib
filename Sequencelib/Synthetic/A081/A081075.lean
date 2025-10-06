/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081075 sequence
-/

namespace Sequence

@[OEIS := A081075, offset := 1, maxIndex := 19, derive := true]
def A081075 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (2 * (2 + (x + x))) 1 1 - 1) - 2

end Sequence