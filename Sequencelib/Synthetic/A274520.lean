/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A274520 sequence
-/

namespace Sequence

@[OEIS := A274520, offset := 0, maxIndex := 26, derive := true]
def A274520 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ (2 * (x + y)) + x) x 0 1

end Sequence