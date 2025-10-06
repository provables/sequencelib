/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020080 sequence
-/

namespace Sequence

@[OEIS := A020080, offset := 0, maxIndex := 100, derive := true]
def A020080 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (2 * (3 * (x * y))) - x) x 1 / loop (λ (x _y) ↦ (x + x) + x) x 1) / loop (λ (x _y) ↦ x + x) x 1

end Sequence