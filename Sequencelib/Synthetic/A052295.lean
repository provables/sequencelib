/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052295 sequence
-/

namespace Sequence

@[OEIS := A052295, offset := 0, maxIndex := 10, derive := true]
def A052295 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) (loop (λ (x y) ↦ x + y) x 0) 1

end Sequence