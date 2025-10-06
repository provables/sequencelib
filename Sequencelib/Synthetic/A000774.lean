/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000774 sequence
-/

namespace Sequence

@[OEIS := A000774, offset := 0, maxIndex := 100, derive := true]
def A000774 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x * y) y 1 / y) + x * y) x 1

end Sequence