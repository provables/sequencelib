/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267807 sequence
-/

namespace Sequence

@[OEIS := A267807, offset := 0, maxIndex := 70, derive := true]
def A267807 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x % 3) + y) (λ (x _y) ↦ x) x 1 0

end Sequence