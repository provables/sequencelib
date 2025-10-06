/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020551 sequence
-/

namespace Sequence

@[OEIS := A020551, offset := 0, maxIndex := 12, derive := true]
def A020551 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + loop (λ (x _y) ↦ (((x * x) + x) + x) + x) 1 (x * x)) 1 (loop (λ (x y) ↦ x * y) x 1)

end Sequence