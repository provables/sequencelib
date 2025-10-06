/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134366 sequence
-/

namespace Sequence

@[OEIS := A134366, offset := 0, maxIndex := 9, derive := true]
def A134366 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x y) ↦ x * y) y x) (λ (_x y) ↦ y) (x - 1) 1 x

end Sequence