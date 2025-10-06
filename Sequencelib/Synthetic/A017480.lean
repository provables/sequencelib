/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017480 sequence
-/

namespace Sequence

@[OEIS := A017480, offset := 0, maxIndex := 100, derive := true]
def A017480 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 3 (2 + (((1 + (x + x)) * ((2 * 2) + 1)) + x))

end Sequence