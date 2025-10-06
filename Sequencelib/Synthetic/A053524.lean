/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053524 sequence
-/

namespace Sequence

@[OEIS := A053524, offset := 0, maxIndex := 100, derive := true]
def A053524 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ ((2 * (x + y)) + x) * 2) x 0 1 / 2

end Sequence