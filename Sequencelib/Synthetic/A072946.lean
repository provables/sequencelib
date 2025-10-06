/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072946 sequence
-/

namespace Sequence

@[OEIS := A072946, offset := 0, maxIndex := 41, derive := true]
def A072946 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 1 else loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 3 1

end Sequence