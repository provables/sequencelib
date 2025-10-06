/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054559 sequence
-/

namespace Sequence

@[OEIS := A054559, offset := 5, maxIndex := 52, derive := true]
def A054559 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((((loop (λ (x _y) ↦ loop (λ (x y) ↦ 2 + (x + y)) x 2 + x) 2 x + 2) * (x + 1)) + x) + x) + 2) * 2

end Sequence