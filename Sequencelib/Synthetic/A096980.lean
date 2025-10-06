/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096980 sequence
-/

namespace Sequence

@[OEIS := A096980, offset := 0, maxIndex := 23, derive := true]
def A096980 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) + y) (λ (x y) ↦ (2 * (x + x)) + y) x 1 2

end Sequence