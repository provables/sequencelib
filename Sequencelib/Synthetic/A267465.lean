/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267465 sequence
-/

namespace Sequence

@[OEIS := A267465, offset := 1, maxIndex := 100, derive := true]
def A267465 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (x y) ↦ 1 + ((x + x) + y)) (λ (_x y) ↦ y + y) x 2 1 - 1) + 1) + loop (λ (x _y) ↦ (x + x) + x) x 1

end Sequence