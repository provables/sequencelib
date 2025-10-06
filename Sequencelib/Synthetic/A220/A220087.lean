/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220087 sequence
-/

namespace Sequence

@[OEIS := A220087, offset := 0, maxIndex := 32, derive := true]
def A220087 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ x + x) x 1 - loop (λ (x y) ↦ (x * x) + y) 2 2

end Sequence