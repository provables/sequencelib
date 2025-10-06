/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065705 sequence
-/

namespace Sequence

@[OEIS := A065705, offset := 0, maxIndex := 25, derive := true]
def A065705 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (2 * ((2 * (x + x)) + x)) 2 1

end Sequence