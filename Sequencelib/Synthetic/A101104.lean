/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101104 sequence
-/

namespace Sequence

@[OEIS := A101104, offset := 1, maxIndex := 59, derive := true]
def A101104 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x y) ↦ x * y) 4 x + x) / (1 + x)) + y) x 1 - x

end Sequence