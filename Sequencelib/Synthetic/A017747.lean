/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017747 sequence
-/

namespace Sequence

@[OEIS := A017747, offset := 83, maxIndex := 100, derive := true]
def A017747 (n : ℕ) : ℕ :=
  let x := n - 83
  Int.toNat <| loop (λ (x y) ↦ (((2 + loop (λ (x _y) ↦ x * x) 2 3) * x) / y) + x) x 1

end Sequence