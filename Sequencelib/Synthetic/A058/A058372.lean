/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A058372 sequence
-/

namespace Sequence

@[OEIS := A058372, offset := 0, maxIndex := 100, derive := true]
def A058372 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ 2 + (x - (y * y))) x 2

end Sequence