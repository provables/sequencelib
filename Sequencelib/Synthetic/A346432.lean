/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A346432 sequence
-/

namespace Sequence

@[OEIS := A346432, offset := 0, maxIndex := 18, derive := true]
def A346432 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ 2 * ((x - y) + x)) (λ (x _y) ↦ x) x 1 0 * loop (λ (x y) ↦ x * y) x 1) + 1) / 2

end Sequence