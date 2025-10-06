/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128470 sequence
-/

namespace Sequence

@[OEIS := A128470, offset := 0, maxIndex := 49, derive := true]
def A128470 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop (λ (x y) ↦ (2 + (2 + y)) * x) 2 x

end Sequence