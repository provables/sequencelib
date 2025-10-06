/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295749 sequence
-/

namespace Sequence

@[OEIS := A295749, offset := 1, maxIndex := 3, derive := true]
def A295749 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + ((x * x) + loop (λ (x y) ↦ (x * x) + y) 2 2)

end Sequence