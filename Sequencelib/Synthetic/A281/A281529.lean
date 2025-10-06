/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A281529 sequence
-/

namespace Sequence

@[OEIS := A281529, offset := 1, maxIndex := 5, derive := true]
def A281529 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (2 * (x * y)) - x) (x) 1 + 2 * 2) * (2 + x)) / 2) / 2

end Sequence