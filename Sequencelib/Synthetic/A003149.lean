/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003149 sequence
-/

namespace Sequence

@[OEIS := A003149, offset := 0, maxIndex := 96, derive := true]
def A003149 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 1 + ((x * y) + x) / 2) x 1

end Sequence