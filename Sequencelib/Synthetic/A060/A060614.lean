/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060614 sequence
-/

namespace Sequence

@[OEIS := A060614, offset := 5, maxIndex := 8, derive := true]
def A060614 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| ((loop (λ (x _y) ↦ (((loop (λ (x _y) ↦ x + x) x 1 * (2 + x)) / 2) / 2) + 1) 2 x - 1) / 2) / 2

end Sequence