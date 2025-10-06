/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111365 sequence
-/

namespace Sequence

@[OEIS := A111365, offset := 0, maxIndex := 21, derive := true]
def A111365 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ ((2 * ((x + y) + y)) + x) + y) x 1 1

end Sequence