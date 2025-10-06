/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081046 sequence
-/

namespace Sequence

@[OEIS := A081046, offset := 0, maxIndex := 19, derive := true]
def A081046 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) (y - 1) 1 + x * y) x 1 * loop (λ (x _y) ↦ (-x)) x 1

end Sequence