/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106252 sequence
-/

namespace Sequence

@[OEIS := A106252, offset := 1, maxIndex := 67, derive := true]
def A106252 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 - (loop (λ (x y) ↦ y - x) x 1 / 3)) + x) + x

end Sequence