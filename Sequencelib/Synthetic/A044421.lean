/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A044421 sequence
-/

namespace Sequence

@[OEIS := A044421, offset := 1, maxIndex := 39, derive := true]
def A044421 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ 2 * ((2 * (2 + (x + x))) + x)) 2 x

end Sequence