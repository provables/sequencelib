/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175979 sequence
-/

namespace Sequence

@[OEIS := A175979, offset := 1, maxIndex := 4, derive := true]
def A175979 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ y) x 1 y) x 1

end Sequence