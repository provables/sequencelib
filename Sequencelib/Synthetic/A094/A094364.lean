/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094364 sequence
-/

namespace Sequence

@[OEIS := A094364, offset := 0, maxIndex := 16, derive := true]
def A094364 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) x 1 * loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 2 1) / 2

end Sequence