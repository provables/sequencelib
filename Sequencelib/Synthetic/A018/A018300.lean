/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018300 sequence
-/

namespace Sequence

@[OEIS := A018300, offset := 1, maxIndex := 8, derive := true]
def A018300 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((loop (λ (x y : ℤ) ↦ ((2 + (x + y)) * x)) (2) (2) - 2) % (1 + x))) x + 1

end Sequence