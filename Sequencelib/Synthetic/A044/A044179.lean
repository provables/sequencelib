/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A044179 sequence
-/

namespace Sequence

@[OEIS := A044179, offset := 1, maxIndex := 41, derive := true]
def A044179 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + (x * y)) 4 (x + x) + x

end Sequence