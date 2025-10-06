/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171869 sequence
-/

namespace Sequence

@[OEIS := A171869, offset := 1, maxIndex := 36, derive := true]
def A171869 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else loop (λ (x _y) ↦ x + x) ((x - 2) - 2) 2

end Sequence