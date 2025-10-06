/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A333378 sequence
-/

namespace Sequence

@[OEIS := A333378, offset := 0, maxIndex := 38, derive := true]
def A333378 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ (-x)) (x / 2) 1 * loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1

end Sequence