/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118710 sequence
-/

namespace Sequence

@[OEIS := A118710, offset := 1, maxIndex := 5, derive := true]
def A118710 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ ((y + x) / 2) * x) 2 x * y) x 1 / loop (λ (x y) ↦ x * y) x 1

end Sequence