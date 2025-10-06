/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170775 sequence
-/

namespace Sequence

@[OEIS := A170775, offset := 0, maxIndex := 100, derive := true]
def A170775 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + ((x * x) * x)) * loop (λ (x _y) ↦ x * x) 3 x) / 2

end Sequence