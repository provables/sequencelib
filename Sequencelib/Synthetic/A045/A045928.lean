/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A045928 sequence
-/

namespace Sequence

@[OEIS := A045928, offset := 1, maxIndex := 100, derive := true]
def A045928 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((1 - loop (λ (x y) ↦ (y / (x * x)) + x) x 1) + x) + x) * 2) + 1) - x

end Sequence