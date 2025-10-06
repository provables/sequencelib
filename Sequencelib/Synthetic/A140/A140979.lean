/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140979 sequence
-/

namespace Sequence

@[OEIS := A140979, offset := 1, maxIndex := 68, derive := true]
def A140979 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x y) ↦ (((y * y) + x) / (1 + x)) + y) (1 + x) 0 - 2) * 2) + y) 2 x / 2

end Sequence