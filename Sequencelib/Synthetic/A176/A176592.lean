/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176592 sequence
-/

namespace Sequence

@[OEIS := A176592, offset := 1, maxIndex := 64, derive := true]
def A176592 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x y) ↦ 2 + ((2 + y) * x)) 2 x - x) (x % 2) x / 2) + 1

end Sequence