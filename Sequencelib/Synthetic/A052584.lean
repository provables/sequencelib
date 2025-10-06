/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052584 sequence
-/

namespace Sequence

@[OEIS := A052584, offset := 0, maxIndex := 100, derive := true]
def A052584 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) x (1 + loop (λ (x _y) ↦ x + x) (x - 1) 1)

end Sequence