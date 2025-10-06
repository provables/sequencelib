/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094294 sequence
-/

namespace Sequence

@[OEIS := A094294, offset := 1, maxIndex := 23, derive := true]
def A094294 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ 1 + ((x * y) + x)) x 0

end Sequence