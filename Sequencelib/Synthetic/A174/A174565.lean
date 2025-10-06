/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174565 sequence
-/

namespace Sequence

@[OEIS := A174565, offset := 0, maxIndex := 33, derive := true]
def A174565 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 2 - ((x + y) + y)) (λ (x _y) ↦ x) (x + x) 1 1

end Sequence