/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350567 sequence
-/

namespace Sequence

@[OEIS := A350567, offset := 2, maxIndex := 15, derive := true]
def A350567 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y) ↦ 2 + ((x / y) + x)) (1 + x) 0 - 1) - x / 2

end Sequence