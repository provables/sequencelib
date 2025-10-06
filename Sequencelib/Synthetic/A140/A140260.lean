/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140260 sequence
-/

namespace Sequence

@[OEIS := A140260, offset := 0, maxIndex := 35, derive := true]
def A140260 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * (2 + x)) - x / 2) x 0

end Sequence