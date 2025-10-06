/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153848 sequence
-/

namespace Sequence

@[OEIS := A153848, offset := 1, maxIndex := 14, derive := true]
def A153848 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ 2 + (2 * ((2 * (x + x)) + x))) 2 x - 1) (1 + x) 0

end Sequence