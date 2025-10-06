/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001231 sequence
-/

namespace Sequence

@[OEIS := A001231, offset := 2, maxIndex := 10, derive := true]
def A001231 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((loop (λ (x y) ↦ (y - x) - x) x 1 / 2) + 1) + x) % (2 + x)

end Sequence