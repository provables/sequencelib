/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143248 sequence
-/

namespace Sequence

@[OEIS := A143248, offset := 1, maxIndex := 14, derive := true]
def A143248 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (_x y) ↦ loop (λ (x y) ↦ (1 + y) * (x * y)) (y + 1) 1) x 0

end Sequence