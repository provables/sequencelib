/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A243201 sequence
-/

namespace Sequence

@[OEIS := A243201, offset := 0, maxIndex := 36, derive := true]
def A243201 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((((x * 2) + y) * y) - x) * x) 2 x + 1

end Sequence