/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204675 sequence
-/

namespace Sequence

@[OEIS := A204675, offset := 0, maxIndex := 100, derive := true]
def A204675 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((2 + (loop (λ (x _y) ↦ x * x) 2 2 * x)) * x)

end Sequence