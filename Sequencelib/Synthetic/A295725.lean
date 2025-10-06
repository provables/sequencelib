/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295725 sequence
-/

namespace Sequence

@[OEIS := A295725, offset := 0, maxIndex := 100, derive := true]
def A295725 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 1 0 - loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ x) x 1 0

end Sequence