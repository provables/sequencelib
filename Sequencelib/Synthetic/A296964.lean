/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A296964 sequence
-/

namespace Sequence

@[OEIS := A296964, offset := 0, maxIndex := 23, derive := true]
def A296964 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (if (x - 1) ≤ 0 then 0 else y * x) + y) x 0

end Sequence