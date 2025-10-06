/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A241095 sequence
-/

namespace Sequence

@[OEIS := A241095, offset := 0, maxIndex := 9, derive := true]
def A241095 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ (2 * (x + x)) + x) y x - x) (λ (_x y) ↦ y) x 1 x

end Sequence