/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301811 sequence
-/

namespace Sequence

@[OEIS := A301811, offset := 1, maxIndex := 4, derive := true]
def A301811 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x) 1 (1 + (x + x)) * 3) + 2

end Sequence