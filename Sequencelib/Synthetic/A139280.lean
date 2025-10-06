/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139280 sequence
-/

namespace Sequence

@[OEIS := A139280, offset := 1, maxIndex := 45, derive := true]
def A139280 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + (((2 * 4) + y) * x)) 2 x - 2

end Sequence