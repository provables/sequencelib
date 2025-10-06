/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159217 sequence
-/

namespace Sequence

@[OEIS := A159217, offset := 2, maxIndex := 28, derive := true]
def A159217 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ x + x) x 1 1 + loop (λ (x y) ↦ (x + x) + y) x 2) + x

end Sequence