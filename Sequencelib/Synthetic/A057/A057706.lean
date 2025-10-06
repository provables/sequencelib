/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057706 sequence
-/

namespace Sequence

@[OEIS := A057706, offset := 1, maxIndex := 3, derive := true]
def A057706 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (x _y) ↦ 2 * ((2 + x) * x)) x x) * 4) + 1

end Sequence