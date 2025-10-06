/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164540 sequence
-/

namespace Sequence

@[OEIS := A164540, offset := 0, maxIndex := 21, derive := true]
def A164540 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((y * 2) + x) * 2) (λ (x y) ↦ 2 * (x + y)) x 1 3

end Sequence