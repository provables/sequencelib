/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118510 sequence
-/

namespace Sequence

@[OEIS := A118510, offset := 1, maxIndex := 9, derive := true]
def A118510 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ (2 * ((x % 2) + x)) + x) 2 x

end Sequence