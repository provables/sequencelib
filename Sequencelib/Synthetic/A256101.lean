/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256101 sequence
-/

namespace Sequence

@[OEIS := A256101, offset := 1, maxIndex := 100, derive := true]
def A256101 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((loop (λ (x y) ↦ ((x * 2) + y) * 2) 2 x + 1) + x) * 2) - 1) + x) * 3) * 2) + 1) * 2) - 1

end Sequence