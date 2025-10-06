/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A144863 sequence
-/

namespace Sequence

@[OEIS := A144863, offset := 1, maxIndex := 9, derive := true]
def A144863 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 1 + loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) 2 x) (x + x) 1

end Sequence