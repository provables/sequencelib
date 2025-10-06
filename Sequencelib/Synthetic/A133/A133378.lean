/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133378 sequence
-/

namespace Sequence

@[OEIS := A133378, offset := 1, maxIndex := 4, derive := true]
def A133378 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ ((loop (λ (x y) ↦ (x * y) + y) x (1 + x) - x) / 2) + 1) x 1

end Sequence