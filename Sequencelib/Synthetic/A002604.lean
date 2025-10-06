/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002604 sequence
-/

namespace Sequence

@[OEIS := A002604, offset := 0, maxIndex := 23, derive := true]
def A002604 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((loop (λ (x _y) ↦ x * x) 2 x * x) * x)

end Sequence