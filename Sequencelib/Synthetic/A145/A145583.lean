/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145583 sequence
-/

namespace Sequence

@[OEIS := A145583, offset := 1, maxIndex := 4, derive := true]
def A145583 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (loop (λ (x y) ↦ x * y) 4 2 - x)) / loop (λ (x _y) ↦ (1 + x) + x) x 1

end Sequence