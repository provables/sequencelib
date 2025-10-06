/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097506 sequence
-/

namespace Sequence

@[OEIS := A097506, offset := 0, maxIndex := 25, derive := true]
def A097506 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ ((y * y) / (2 + (y + x))) + y) x 0

end Sequence