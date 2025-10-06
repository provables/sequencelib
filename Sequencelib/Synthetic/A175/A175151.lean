/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175151 sequence
-/

namespace Sequence

@[OEIS := A175151, offset := 1, maxIndex := 50, derive := true]
def A175151 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ loop2 (λ (x y) ↦ 1 + ((2 + y) * x)) (λ (_x y) ↦ y) x 1 x) 1 y + x) x 1

end Sequence