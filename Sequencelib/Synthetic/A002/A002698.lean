/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002698 sequence
-/

namespace Sequence

@[OEIS := A002698, offset := 2, maxIndex := 24, derive := true]
def A002698 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ (2 + (2 + y)) * (x + y)) (λ (_x _y) ↦ 0) x 1 (x * 2)

end Sequence