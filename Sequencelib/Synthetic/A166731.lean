/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166731 sequence
-/

namespace Sequence

@[OEIS := A166731, offset := 1, maxIndex := 44, derive := true]
def A166731 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + x) * loop (λ (x _y) ↦ 1 + ((2 + x) * x)) 2 2

end Sequence