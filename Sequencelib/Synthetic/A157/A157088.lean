/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A157088 sequence
-/

namespace Sequence

@[OEIS := A157088, offset := 0, maxIndex := 50, derive := true]
def A157088 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) (x + x) 3 0 / 2) - 1

end Sequence