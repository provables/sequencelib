/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145008 sequence
-/

namespace Sequence

@[OEIS := A145008, offset := 1, maxIndex := 7, derive := true]
def A145008 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (x _y) ↦ x * x) (1 + x) 3 / 2)

end Sequence