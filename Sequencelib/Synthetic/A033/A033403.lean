/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033403 sequence
-/

namespace Sequence

@[OEIS := A033403, offset := 1, maxIndex := 92, derive := true]
def A033403 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x _y) ↦ x * x) 2 3) / (1 + x)

end Sequence