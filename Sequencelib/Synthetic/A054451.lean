/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054451 sequence
-/

namespace Sequence

@[OEIS := A054451, offset := 0, maxIndex := 100, derive := true]
def A054451 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 2 1 - 1) - loop2 (λ (x y) ↦ (x + y) / x) (λ (x _y) ↦ x) x 1 1) + 1

end Sequence