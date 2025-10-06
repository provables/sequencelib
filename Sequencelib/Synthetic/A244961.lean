/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A244961 sequence
-/

namespace Sequence

@[OEIS := A244961, offset := 1, maxIndex := 29, derive := true]
def A244961 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 1 + loop (λ (x _y) ↦ x + x) y x) (λ (_x y) ↦ y) (1 + x) 1 x - 1

end Sequence