/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000541 sequence
-/

namespace Sequence

@[OEIS := A000541, offset := 0, maxIndex := 100, derive := true]
def A000541 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ ((loop (λ (x _y) ↦ x * x) 2 x * x) * x) * x) 1 y + x) x 0

end Sequence