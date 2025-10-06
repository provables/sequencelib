/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290651 sequence
-/

namespace Sequence

@[OEIS := A290651, offset := 1, maxIndex := 28, derive := true]
def A290651 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x y) ↦ (x + x) - y) x 1) + loop (λ (x _y) ↦ (x + x) + x) x 1

end Sequence