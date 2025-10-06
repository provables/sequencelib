/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167030 sequence
-/

namespace Sequence

@[OEIS := A167030, offset := 0, maxIndex := 100, derive := true]
def A167030 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x + x) x 0 1 - 1

end Sequence