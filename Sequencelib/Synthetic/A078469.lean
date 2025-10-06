/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078469 sequence
-/

namespace Sequence

@[OEIS := A078469, offset := 0, maxIndex := 100, derive := true]
def A078469 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ loop2 (λ (x y) ↦ (2 * ((x + x) + x)) + y) (λ (x _y) ↦ x) y 0 2) x 1

end Sequence