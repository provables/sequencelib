/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154604 sequence
-/

namespace Sequence

@[OEIS := A154604, offset := 0, maxIndex := 33, derive := true]
def A154604 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y 0 * x) y x) x 1

end Sequence