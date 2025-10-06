/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106668 sequence
-/

namespace Sequence

@[OEIS := A106668, offset := 0, maxIndex := 5, derive := true]
def A106668 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + ((2 * (x * x)) - x / 2)) - loop (λ (x _y) ↦ x + x) x 1

end Sequence