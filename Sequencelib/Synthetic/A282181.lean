/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282181 sequence
-/

namespace Sequence

@[OEIS := A282181, offset := 0, maxIndex := 4, derive := true]
def A282181 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (((x * x) - 2) * x) - x) x (1 + (2 * 4))

end Sequence