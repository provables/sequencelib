/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106511 sequence
-/

namespace Sequence

@[OEIS := A106511, offset := 0, maxIndex := 100, derive := true]
def A106511 (x : ℕ) : ℤ :=
  ((loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 1 1 - x % 3) / 2) + 1

end Sequence