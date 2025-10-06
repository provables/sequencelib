/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A120773 sequence
-/

namespace Sequence

@[OEIS := A120773, offset := 0, maxIndex := 11, derive := true]
def A120773 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ x + x) (x * x) 1 - loop (λ (x _y) ↦ (x + x) + x) x 1

end Sequence