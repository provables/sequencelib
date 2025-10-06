/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329844 sequence
-/

namespace Sequence

@[OEIS := A329844, offset := 1, maxIndex := 58, derive := true]
def A329844 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y) ↦ (x * x) * x) 2 2 - 2) * (1 + x)) + x) / ((loop (λ (x _y) ↦ (x + x) + x) (3 + 1) 1 * 2) + 1)

end Sequence