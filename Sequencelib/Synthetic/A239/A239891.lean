/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A239891 sequence
-/

namespace Sequence

@[OEIS := A239891, offset := 1, maxIndex := 5, derive := true]
def A239891 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (_x y) ↦ loop (λ (x y) ↦ x * y) (2 + y) 1) (λ (x _y) ↦ x) x 1 0 + 1) / 2

end Sequence