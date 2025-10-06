/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114561 sequence
-/

namespace Sequence

@[OEIS := A114561, offset := 0, maxIndex := 4, derive := true]
def A114561 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ x + x) x 2) x 0 / 2

end Sequence