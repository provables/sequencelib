/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A344261 sequence
-/

namespace Sequence

@[OEIS := A344261, offset := 0, maxIndex := 30, derive := true]
def A344261 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ (x * 2) * 2) y 1 1 - x) x 2 / 2

end Sequence