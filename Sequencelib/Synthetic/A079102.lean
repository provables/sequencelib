/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079102 sequence
-/

namespace Sequence

@[OEIS := A079102, offset := 1, maxIndex := 36, derive := true]
def A079102 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) y x 1) x 1

end Sequence