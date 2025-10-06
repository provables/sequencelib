/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053581 sequence
-/

namespace Sequence

@[OEIS := A053581, offset := 0, maxIndex := 23, derive := true]
def A053581 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((y / 2) + x) + x) + x) (λ (_x y) ↦ y + y) x 1 1

end Sequence