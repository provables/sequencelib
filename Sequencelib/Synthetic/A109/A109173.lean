/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A109173 sequence
-/

namespace Sequence

@[OEIS := A109173, offset := 1, maxIndex := 10, derive := true]
def A109173 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (((y % 2) + x * x) - 1) + x) x 1 / 2) * 2) + 1

end Sequence