/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121510 sequence
-/

namespace Sequence

@[OEIS := A121510, offset := 1, maxIndex := 5, derive := true]
def A121510 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 x) x 0 + 1

end Sequence