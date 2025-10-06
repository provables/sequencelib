/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169762 sequence
-/

namespace Sequence

@[OEIS := A169762, offset := 5, maxIndex := 11, derive := true]
def A169762 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| ((loop (λ (x y) ↦ (y / 2) + x) x x * x) / 4) + 1

end Sequence