/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A050763 sequence
-/

namespace Sequence

@[OEIS := A050763, offset := 1, maxIndex := 10, derive := true]
def A050763 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop2 (λ (x y) ↦ 1 + ((y * (((x / 2) / 2) / 2)) + x)) (λ (_x _y) ↦ 1) x x x / 2) + x) / 2

end Sequence