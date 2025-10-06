/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111766 sequence
-/

namespace Sequence

@[OEIS := A111766, offset := 1, maxIndex := 25, derive := true]
def A111766 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (y + y) 1 0 - x) x 0

end Sequence