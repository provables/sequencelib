/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079597 sequence
-/

namespace Sequence

@[OEIS := A079597, offset := 0, maxIndex := 6, derive := true]
def A079597 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x _y) ↦ 2) y x x) (λ (_x y) ↦ y) x 1 x

end Sequence