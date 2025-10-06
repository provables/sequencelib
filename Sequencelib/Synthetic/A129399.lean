/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A129399 sequence
-/

namespace Sequence

@[OEIS := A129399, offset := 0, maxIndex := 3, derive := true]
def A129399 (x : ℕ) : ℤ :=
  ((loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 0 (1 + x) * 2) * 2) + 1

end Sequence