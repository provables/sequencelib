/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A144917 sequence
-/

namespace Sequence

@[OEIS := A144917, offset := 1, maxIndex := 57, derive := true]
def A144917 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop (λ (x y) ↦ ((y + x) / 2) + y) x 0) + 1

end Sequence