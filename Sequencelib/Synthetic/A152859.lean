/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152859 sequence
-/

namespace Sequence

@[OEIS := A152859, offset := 0, maxIndex := 4, derive := true]
def A152859 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ (2 * (x * y)) - x) (λ (_x y) ↦ y) x 1 y) x x

end Sequence