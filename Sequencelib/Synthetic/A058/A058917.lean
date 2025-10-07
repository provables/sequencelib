/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058917 sequence
-/

namespace Sequence

@[OEIS := A058917, offset := 1, maxIndex := 6, derive := true]
def A058917 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ loop (λ (x y) ↦ y - x) (x - (x / 2)) (1 + y)) x 1) x

end Sequence