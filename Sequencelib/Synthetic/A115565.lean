/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115565 sequence
-/

namespace Sequence

@[OEIS := A115565, offset := 1, maxIndex := 100, derive := true]
def A115565 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 + 4) * loop (λ (x _y) ↦ (1 + (x * x)) + x) 2 x) - 2) - 2

end Sequence