/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066141 sequence
-/

namespace Sequence

@[OEIS := A066141, offset := 1, maxIndex := 99, derive := true]
def A066141 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop2 (λ (x y) ↦ x + (x * y)) (λ (_x y) ↦ y) x 1 x) + x

end Sequence