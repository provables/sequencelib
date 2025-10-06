/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052277 sequence
-/

namespace Sequence

@[OEIS := A052277, offset := 0, maxIndex := 10, derive := true]
def A052277 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 * (x * y)) + x) * (y + 1)) (x * 2) 1

end Sequence