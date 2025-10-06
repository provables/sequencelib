/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159221 sequence
-/

namespace Sequence

@[OEIS := A159221, offset := 2, maxIndex := 28, derive := true]
def A159221 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((loop (λ (x _y) ↦ 2 * (2 + x)) x 2 + loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ x + x) x 1 1) * 2) + 1) + 2

end Sequence