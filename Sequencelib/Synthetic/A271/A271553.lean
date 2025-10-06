/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271553 sequence
-/

namespace Sequence

@[OEIS := A271553, offset := 0, maxIndex := 4, derive := true]
def A271553 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0) x 1

end Sequence