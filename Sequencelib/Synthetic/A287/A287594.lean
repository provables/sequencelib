/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A287594 sequence
-/

namespace Sequence

@[OEIS := A287594, offset := 0, maxIndex := 28, derive := true]
def A287594 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ (x + y) + y) x 2 1 + loop (λ (x _y) ↦ x + x) x 1

end Sequence