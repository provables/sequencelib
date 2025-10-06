/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158127 sequence
-/

namespace Sequence

@[OEIS := A158127, offset := 1, maxIndex := 100, derive := true]
def A158127 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) 2 (1 + x)) * (1 + x)

end Sequence