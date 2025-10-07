/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010868 sequence
-/

namespace Sequence

@[OEIS := A010868, offset := 0, maxIndex := 53, derive := true]
def A010868 (_x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop (λ (x y) ↦ (x * x) + y) 2 2

end Sequence
