/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140781 sequence
-/

namespace Sequence

@[OEIS := A140781, offset := 0, maxIndex := 20, derive := true]
def A140781 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y + x) (λ (x y) ↦ ((4 * (x + y)) * 2) + y) x 1 1

end Sequence