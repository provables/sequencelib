/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A341929 sequence
-/

namespace Sequence

@[OEIS := A341929, offset := 0, maxIndex := 23, derive := true]
def A341929 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (2 * ((y + y) * 2)) - x) x 1 2

end Sequence