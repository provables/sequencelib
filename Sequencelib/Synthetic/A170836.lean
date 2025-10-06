/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170836 sequence
-/

namespace Sequence

@[OEIS := A170836, offset := 0, maxIndex := 72, derive := true]
def A170836 (x : ℕ) : ℕ :=
  Int.toNat <| if (x - 2) ≤ 0 then x * x else loop (λ (x _y) ↦ x * x) 2 2

end Sequence