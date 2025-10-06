/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010019 sequence
-/

namespace Sequence

@[OEIS := A010019, offset := 0, maxIndex := 100, derive := true]
def A010019 (x : ℕ) : ℕ :=
  Int.toNat <| ((2 + loop (λ (x y) ↦ (x * x) + y) 2 2) * (x * x)) + if x ≤ 0 then 1 else 2

end Sequence