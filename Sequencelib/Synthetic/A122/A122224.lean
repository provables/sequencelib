/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122224 sequence
-/

namespace Sequence

@[OEIS := A122224, offset := 2, maxIndex := 8, derive := true]
def A122224 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((loop (λ (x y) ↦ ((x - (x / 2)) + x) + y) 2 x + x) * (x + 1)) / 2) + 1) / 2

end Sequence