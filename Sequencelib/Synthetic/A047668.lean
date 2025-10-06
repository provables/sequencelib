/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047668 sequence
-/

namespace Sequence

@[OEIS := A047668, offset := 1, maxIndex := 34, derive := true]
def A047668 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((1 + loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) x x) * 2) + 1) + x) * (1 + x)) + 1

end Sequence