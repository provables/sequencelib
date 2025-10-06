/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280031 sequence
-/

namespace Sequence

@[OEIS := A280031, offset := 0, maxIndex := 5, derive := true]
def A280031 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) y x 1) x 1 + x

end Sequence