/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271393 sequence
-/

namespace Sequence

@[OEIS := A271393, offset := 1, maxIndex := 3, derive := true]
def A271393 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ (x + x) + x) x 1 / 2) x 3

end Sequence