/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A256509 sequence
-/

namespace Sequence

@[OEIS := A256509, offset := 0, maxIndex := 4, derive := true]
def A256509 (x : ℕ) : ℤ :=
  (loop (λ (x _y) ↦ loop (λ (x y) ↦ x * y) x 1) 2 x - 1) - loop (λ (x y) ↦ x * y) x 1

end Sequence