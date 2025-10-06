/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137697 sequence
-/

namespace Sequence

@[OEIS := A137697, offset := 0, maxIndex := 17, derive := true]
def A137697 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ 2 * ((2 * (x * y)) - x)) x 1 / loop (λ (x y) ↦ (x * y) + x) x 1) *
  loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 1

end Sequence