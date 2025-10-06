/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010098 sequence
-/

namespace Sequence

@[OEIS := A010098, offset := 0, maxIndex := 16, derive := true]
def A010098 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (x _y) ↦ x) x 1 3

end Sequence