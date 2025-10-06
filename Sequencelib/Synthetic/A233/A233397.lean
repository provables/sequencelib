/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A233397 sequence
-/

namespace Sequence

@[OEIS := A233397, offset := 0, maxIndex := 23, derive := true]
def A233397 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x / loop (λ (x _y) ↦ (x + x) + x) x 1

end Sequence