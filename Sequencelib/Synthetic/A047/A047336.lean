/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047336 sequence
-/

namespace Sequence

@[OEIS := A047336, offset := 1, maxIndex := 100, derive := true]
def A047336 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop2 (λ (_x y) ↦ 2 + (1 + y)) (λ (x _y) ↦ x) x x x) + x

end Sequence