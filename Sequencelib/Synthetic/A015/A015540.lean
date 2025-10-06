/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015540 sequence
-/

namespace Sequence

@[OEIS := A015540, offset := 0, maxIndex := 23, derive := true]
def A015540 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (_x y) ↦ 2 * ((y + y) + y)) x 0 1

end Sequence