/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033349 sequence
-/

namespace Sequence

@[OEIS := A033349, offset := 1, maxIndex := 92, derive := true]
def A033349 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x y) ↦ (x * x) + y) 2 2) / (1 + x)

end Sequence