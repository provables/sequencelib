/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024219 sequence
-/

namespace Sequence

@[OEIS := A024219, offset := 1, maxIndex := 100, derive := true]
def A024219 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 + x) * x) + loop (λ (x y) ↦ x - y) x 1 / 2

end Sequence