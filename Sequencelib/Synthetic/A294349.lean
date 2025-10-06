/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A294349 sequence
-/

namespace Sequence

@[OEIS := A294349, offset := 0, maxIndex := 13, derive := true]
def A294349 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (y + y) 2 1 * x) x 2

end Sequence