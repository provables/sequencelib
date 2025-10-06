/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267883 sequence
-/

namespace Sequence

@[OEIS := A267883, offset := 0, maxIndex := 100, derive := true]
def A267883 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then x else comprN (λ (x : ℤ) ↦ 0) (4 - x)

end Sequence