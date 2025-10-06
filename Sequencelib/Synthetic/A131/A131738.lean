/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131738 sequence
-/

namespace Sequence

@[OEIS := A131738, offset := 0, maxIndex := 100, derive := true]
def A131738 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (-(x + y))) (λ (_x _y) ↦ 0) x x 1

end Sequence