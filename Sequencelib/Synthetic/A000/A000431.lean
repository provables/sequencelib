/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000431 sequence
-/

namespace Sequence

@[OEIS := A000431, offset := 0, maxIndex := 100, derive := true]
def A000431 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop2 (λ (x y) ↦ x * y) (λ (_x _y) ↦ 2) y 1 x + x) - y) (λ (_x _y) ↦ 1) x 1 x / 2

end Sequence