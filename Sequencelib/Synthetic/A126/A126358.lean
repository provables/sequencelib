/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126358 sequence
-/

namespace Sequence

@[OEIS := A126358, offset := 0, maxIndex := 50, derive := true]
def A126358 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 2 0

end Sequence