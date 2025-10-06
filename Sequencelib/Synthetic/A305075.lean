/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A305075 sequence
-/

namespace Sequence

@[OEIS := A305075, offset := 1, maxIndex := 100, derive := true]
def A305075 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (y + x) * 4) (λ (_x _y) ↦ 2) 2 x x

end Sequence