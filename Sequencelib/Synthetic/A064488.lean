/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064488 sequence
-/

namespace Sequence

@[OEIS := A064488, offset := 1, maxIndex := 74, derive := true]
def A064488 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x y) ↦ x / (1 + y)) 2 x + 1) - x) / 2) + y) x 0

end Sequence