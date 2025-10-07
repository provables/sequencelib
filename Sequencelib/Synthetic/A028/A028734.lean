/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028734 sequence
-/

namespace Sequence

@[OEIS := A028734, offset := 1, maxIndex := 13, derive := true]
def A028734 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ ((loop (λ (x _y) ↦ 2 + (x)) x 1 - x) * 2) - (2 + y)) x 1) x

end Sequence