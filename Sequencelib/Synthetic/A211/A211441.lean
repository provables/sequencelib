/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A211441 sequence
-/

namespace Sequence

@[OEIS := A211441, offset := 0, maxIndex := 100, derive := true]
def A211441 (x : ℕ) : ℕ :=
  Int.toNat <| 3 * ((x - loop (λ (_x _y) ↦ 1) x x) + x * x)

end Sequence