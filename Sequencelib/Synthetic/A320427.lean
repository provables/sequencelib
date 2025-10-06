/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A320427 sequence
-/

namespace Sequence

@[OEIS := A320427, offset := 1, maxIndex := 62, derive := true]
def A320427 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((loop2 (λ (_x y) ↦ 2 + y) (λ (x _y) ↦ x) x x x / 3) + 2) + x) + 1) + 2) + 2) + 2) + 2

end Sequence