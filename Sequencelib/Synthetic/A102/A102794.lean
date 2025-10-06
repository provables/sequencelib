/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102794 sequence
-/

namespace Sequence

@[OEIS := A102794, offset := 1, maxIndex := 11, derive := true]
def A102794 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ x * x) 1 (loop (λ (x _y) ↦ 2 * (loop (λ (x _y) ↦ 1 + (x + x)) 2 x + x)) (1 + x) 0)

end Sequence