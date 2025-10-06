/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022838 sequence
-/

namespace Sequence

@[OEIS := A022838, offset := 1, maxIndex := 100, derive := true]
def A022838 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ ((y * y) / ((2 + x) * 2)) + y) ((2 + x) + x) 0 - 1) - x

end Sequence