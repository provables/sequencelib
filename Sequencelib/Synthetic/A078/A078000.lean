/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078000 sequence
-/

namespace Sequence

@[OEIS := A078000, offset := 0, maxIndex := 18, derive := true]
def A078000 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (x + x) + loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) y 1 1) x 1

end Sequence