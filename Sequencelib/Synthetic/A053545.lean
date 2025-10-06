/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053545 sequence
-/

namespace Sequence

@[OEIS := A053545, offset := 0, maxIndex := 100, derive := true]
def A053545 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (_x y) ↦ (y + y) - 1) x 1 x / 2

end Sequence