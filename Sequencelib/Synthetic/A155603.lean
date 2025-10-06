/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155603 sequence
-/

namespace Sequence

@[OEIS := A155603, offset := 0, maxIndex := 21, derive := true]
def A155603 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + y)) + x) (λ (_x y) ↦ (2 * (y + y)) + y) x 2 1 - 1

end Sequence