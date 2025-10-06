/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A269059 sequence
-/

namespace Sequence

@[OEIS := A269059, offset := 1, maxIndex := 32, derive := true]
def A269059 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop2 (λ (x y) ↦ 2 * (x + y)) (λ (_x _y) ↦ 2) x x 1) + x

end Sequence