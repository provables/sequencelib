/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177107 sequence
-/

namespace Sequence

@[OEIS := A177107, offset := 1, maxIndex := 17, derive := true]
def A177107 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) (1 + x) 1 - 1) - 2) - 2) - 2) * 3

end Sequence