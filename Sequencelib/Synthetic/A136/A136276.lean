/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136276 sequence
-/

namespace Sequence

@[OEIS := A136276, offset := 1, maxIndex := 4, derive := true]
def A136276 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + (2 + y)) (λ (_x y) ↦ y * y) x 0 x

end Sequence