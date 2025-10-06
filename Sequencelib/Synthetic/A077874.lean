/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077874 sequence
-/

namespace Sequence

@[OEIS := A077874, offset := 0, maxIndex := 46, derive := true]
def A077874 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop (λ (x _y) ↦ 1 - (x + x)) (y / 2) 1 + x) x 1

end Sequence