/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159740 sequence
-/

namespace Sequence

@[OEIS := A159740, offset := 2, maxIndex := 99, derive := true]
def A159740 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * 4) + y) * x) (λ (_x _y) ↦ 2) (x + 1) 1 1 * (2 + x)

end Sequence