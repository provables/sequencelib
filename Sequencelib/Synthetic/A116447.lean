/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A116447 sequence
-/

namespace Sequence

@[OEIS := A116447, offset := 0, maxIndex := 39, derive := true]
def A116447 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) x y) (x % 2) (x / 2)

end Sequence