/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184115 sequence
-/

namespace Sequence

@[OEIS := A184115, offset := 1, maxIndex := 90, derive := true]
def A184115 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((2 + x) * x) / (1 + loop (λ (x y) ↦ (2 + y) * x) 2 2)) + x) + 2

end Sequence