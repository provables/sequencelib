/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001697 sequence
-/

namespace Sequence

@[OEIS := A001697, offset := 0, maxIndex := 11, derive := true]
def A001697 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x / y) + x) * x) (λ (x _y) ↦ x) x 1 2

end Sequence