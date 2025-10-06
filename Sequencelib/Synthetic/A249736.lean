/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A249736 sequence
-/

namespace Sequence

@[OEIS := A249736, offset := 0, maxIndex := 84, derive := true]
def A249736 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) x 0 % (((2 + 3) * 2) * 3)

end Sequence