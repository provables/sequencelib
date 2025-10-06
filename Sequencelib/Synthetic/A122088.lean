/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122088 sequence
-/

namespace Sequence

@[OEIS := A122088, offset := 1, maxIndex := 66, derive := true]
def A122088 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((3 * loop (λ (x y) ↦ (2 + y) - x) x 0) + 1) + x

end Sequence