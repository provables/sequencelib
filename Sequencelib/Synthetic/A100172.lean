/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A100172 sequence
-/

namespace Sequence

@[OEIS := A100172, offset := 1, maxIndex := 32, derive := true]
def A100172 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((loop (λ (x _y) ↦ 2 + (2 * ((x + x) + x))) 2 x) + 1) / 2) + 2) + x) * x) + 2) / 2) + x) * (1 + x)

end Sequence