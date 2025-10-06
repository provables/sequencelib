/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051460 sequence
-/

namespace Sequence

@[OEIS := A051460, offset := 1, maxIndex := 4, derive := true]
def A051460 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((loop (λ (x y) ↦ (2 + ((1 + x) * y)) * x) x 1 / 2) + 1) / 2) / 2) + 2) * 2

end Sequence