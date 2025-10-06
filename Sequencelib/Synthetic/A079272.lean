/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079272 sequence
-/

namespace Sequence

@[OEIS := A079272, offset := 1, maxIndex := 100, derive := true]
def A079272 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x _y) ↦ 3 * (1 + x)) (1 + x) x

end Sequence