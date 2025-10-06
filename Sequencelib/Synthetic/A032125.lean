/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032125 sequence
-/

namespace Sequence

@[OEIS := A032125, offset := 1, maxIndex := 100, derive := true]
def A032125 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x + x) (λ (_x _y) ↦ 0) x 1 x * 3

end Sequence