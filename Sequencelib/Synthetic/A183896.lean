/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183896 sequence
-/

namespace Sequence

@[OEIS := A183896, offset := 0, maxIndex := 25, derive := true]
def A183896 (x : ℕ) : ℤ :=
  (1 - loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) (loop (λ (x y) ↦ x + y) x 1) 1 0) / 2

end Sequence