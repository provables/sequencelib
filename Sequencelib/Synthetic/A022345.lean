/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022345 sequence
-/

namespace Sequence

@[OEIS := A022345, offset := 0, maxIndex := 100, derive := true]
def A022345 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x y) ↦ x + y) 4 y) (λ (x y) ↦ x + y) x 0 1

end Sequence