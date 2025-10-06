/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A270841 sequence
-/

namespace Sequence

@[OEIS := A270841, offset := 1, maxIndex := 100, derive := true]
def A270841 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ y + y) x 3 1) + x

end Sequence