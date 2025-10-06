/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253208 sequence
-/

namespace Sequence

@[OEIS := A253208, offset := 0, maxIndex := 24, derive := true]
def A253208 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 + loop (λ (x _y) ↦ x + x) (x + x) 1)

end Sequence