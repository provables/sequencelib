/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A255138 sequence
-/

namespace Sequence

@[OEIS := A255138, offset := 0, maxIndex := 29, derive := true]
def A255138 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (y - 1) + y) (λ (x _y) ↦ x + x) x 2 1

end Sequence