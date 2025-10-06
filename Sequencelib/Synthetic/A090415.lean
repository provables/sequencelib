/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A090415 sequence
-/

namespace Sequence

@[OEIS := A090415, offset := 2, maxIndex := 58, derive := true]
def A090415 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((1 + (2 * (2 + loop (λ (x _y) ↦ x * x) 2 2))) * (1 + x)) / 2) / 2) + 1) / 2) + 2) + 2

end Sequence