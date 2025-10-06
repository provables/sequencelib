/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085620 sequence
-/

namespace Sequence

@[OEIS := A085620, offset := 4, maxIndex := 9, derive := true]
def A085620 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 1 x) 2 (x - 1)

end Sequence