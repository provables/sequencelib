/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A120617 sequence
-/

namespace Sequence

@[OEIS := A120617, offset := 0, maxIndex := 33, derive := true]
def A120617 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ 2 * loop (λ (x _y) ↦ (-x)) y x) x 1

end Sequence