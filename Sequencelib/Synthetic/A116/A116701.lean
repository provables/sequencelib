/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A116701 sequence
-/

namespace Sequence

@[OEIS := A116701, offset := 0, maxIndex := 41, derive := true]
def A116701 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (y * y) + x) (y - 2) x + y) x 1 - x

end Sequence