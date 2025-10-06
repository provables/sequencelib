/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A191355 sequence
-/

namespace Sequence

@[OEIS := A191355, offset := 1, maxIndex := 20, derive := true]
def A191355 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ (y / 2) + x) x 1 - x / 3) + 2) + x) + 2

end Sequence