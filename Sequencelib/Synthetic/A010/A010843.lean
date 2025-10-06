/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010843 sequence
-/

namespace Sequence

@[OEIS := A010843, offset := 1, maxIndex := 22, derive := true]
def A010843 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ loop (λ (x _y) ↦ (-((x + x) + x))) y 1 + x * y) x 1

end Sequence