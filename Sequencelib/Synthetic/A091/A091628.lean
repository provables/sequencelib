/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091628 sequence
-/

namespace Sequence

@[OEIS := A091628, offset := 1, maxIndex := 17, derive := true]
def A091628 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ 2 + (2 * ((2 * (x + x)) + x))) (1 + x) 2

end Sequence