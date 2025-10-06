/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A229853 sequence
-/

namespace Sequence

@[OEIS := A229853, offset := 0, maxIndex := 100, derive := true]
def A229853 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ 2 * (x * y)) 4 x

end Sequence