/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081663 sequence
-/

namespace Sequence

@[OEIS := A081663, offset := 0, maxIndex := 27, derive := true]
def A081663 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (x + x) 1 0 + loop (λ (x _y) ↦ x + x) (x - 1) x

end Sequence