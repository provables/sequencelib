/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A041265 sequence
-/

namespace Sequence

@[OEIS := A041265, offset := 0, maxIndex := 100, derive := true]
def A041265 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x y) ↦ x * y) 4 x + y) (λ (x _y) ↦ x) x 1 0

end Sequence