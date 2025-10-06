/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271438 sequence
-/

namespace Sequence

@[OEIS := A271438, offset := 1, maxIndex := 3, derive := true]
def A271438 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ 1 + (x * y)) (2 + y) x + y) x 1

end Sequence