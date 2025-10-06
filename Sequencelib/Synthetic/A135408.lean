/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135408 sequence
-/

namespace Sequence

@[OEIS := A135408, offset := 1, maxIndex := 4, derive := true]
def A135408 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x + loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x) x 1

end Sequence