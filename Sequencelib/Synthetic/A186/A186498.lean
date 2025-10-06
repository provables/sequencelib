/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186498 sequence
-/

namespace Sequence

@[OEIS := A186498, offset := 1, maxIndex := 85, derive := true]
def A186498 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + ((loop (λ (x y) ↦ x + y) x x / 3) + x)

end Sequence