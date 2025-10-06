/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185141 sequence
-/

namespace Sequence

@[OEIS := A185141, offset := 0, maxIndex := 21, derive := true]
def A185141 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x y) ↦ (x * y) * y) y x) (λ (_x y) ↦ y) x 1 x

end Sequence