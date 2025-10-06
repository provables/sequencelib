/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A117667 sequence
-/

namespace Sequence

@[OEIS := A117667, offset := 1, maxIndex := 99, derive := true]
def A117667 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x * y) + (x - 1)) (λ (_x y) ↦ y) x x x + 1

end Sequence