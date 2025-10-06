/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005370 sequence
-/

namespace Sequence

@[OEIS := A005370, offset := 0, maxIndex := 8, derive := true]
def A005370 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 0) 2 x

end Sequence