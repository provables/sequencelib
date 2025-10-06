/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166025 sequence
-/

namespace Sequence

@[OEIS := A166025, offset := 0, maxIndex := 100, derive := true]
def A166025 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x _y) ↦ x * x) 2 2 + y) (λ (x y) ↦ x + y) x (3 * 2) 1

end Sequence