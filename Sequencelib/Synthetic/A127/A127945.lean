/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127945 sequence
-/

namespace Sequence

@[OEIS := A127945, offset := 0, maxIndex := 39, derive := true]
def A127945 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ 2 * loop (λ (x _y) ↦ ((-x)) - x) y x) x 1

end Sequence