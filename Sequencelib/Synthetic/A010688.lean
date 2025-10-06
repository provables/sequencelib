/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010688 sequence
-/

namespace Sequence

@[OEIS := A010688, offset := 0, maxIndex := 80, derive := true]
def A010688 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * 4) - x) x 1

end Sequence