/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138161 sequence
-/

namespace Sequence

@[OEIS := A138161, offset := 2, maxIndex := 10, derive := true]
def A138161 (n : ℕ) : ℤ :=
  let x := n - 2
  loop (λ (x _y) ↦ loop (λ (x _y) ↦ x * x) 2 2 / (2 + x)) 2 x

end Sequence