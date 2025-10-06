/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131029 sequence
-/

namespace Sequence

@[OEIS := A131029, offset := 1, maxIndex := 84, derive := true]
def A131029 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 + loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 2) * 3) + 2

end Sequence