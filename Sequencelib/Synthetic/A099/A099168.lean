/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099168 sequence
-/

namespace Sequence

@[OEIS := A099168, offset := 0, maxIndex := 10, derive := true]
def A099168 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (2 * (x + x)) + x) y x) (x - 1) 1 * loop (λ (x _y) ↦ (x + x) + x) x 1

end Sequence