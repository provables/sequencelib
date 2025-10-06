/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078052 sequence
-/

namespace Sequence

@[OEIS := A078052, offset := 0, maxIndex := 100, derive := true]
def A078052 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y + y) (λ (x _y) ↦ 1 - x) x 1 1 * loop (λ (x _y) ↦ (-x)) x 1

end Sequence