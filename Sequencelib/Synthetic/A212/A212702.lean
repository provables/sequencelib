/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212702 sequence
-/

namespace Sequence

@[OEIS := A212702, offset := 1, maxIndex := 98, derive := true]
def A212702 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x + x) ((x + x) + x) (1 + (2 + 4)) * (1 + x)

end Sequence