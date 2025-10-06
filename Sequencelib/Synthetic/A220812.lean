/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A220812 sequence
-/

namespace Sequence

@[OEIS := A220812, offset := 0, maxIndex := 8, derive := true]
def A220812 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) x (2 + (2 * 4))

end Sequence