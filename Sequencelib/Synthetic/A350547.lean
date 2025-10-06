/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350547 sequence
-/

namespace Sequence

@[OEIS := A350547, offset := 0, maxIndex := 6, derive := true]
def A350547 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (loop (λ (x _y) ↦ ((x * x) - x) / 2) 2 x % 2) + (x + y)) x x + x) + 1

end Sequence