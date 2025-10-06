/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060482 sequence
-/

namespace Sequence

@[OEIS := A060482, offset := 1, maxIndex := 100, derive := true]
def A060482 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ ((2 % x) + x) + x) x 1 1

end Sequence