/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A226447 sequence
-/

namespace Sequence

@[OEIS := A226447, offset := 0, maxIndex := 41, derive := true]
def A226447 (x : ℕ) : ℤ :=
  ((loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 2 1 - loop2 (λ (x y) ↦ (1 + x) - y) (λ (x _y) ↦ x) x 1 0) / 2) + 1

end Sequence