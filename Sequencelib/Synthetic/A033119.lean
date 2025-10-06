/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033119 sequence
-/

namespace Sequence

@[OEIS := A033119, offset := 1, maxIndex := 19, derive := true]
def A033119 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (1 - (y % 2)) + loop (λ (x _y) ↦ (x + x) + x) 2 x) x 1

end Sequence