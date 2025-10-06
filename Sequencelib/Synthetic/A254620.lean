/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254620 sequence
-/

namespace Sequence

@[OEIS := A254620, offset := 0, maxIndex := 13, derive := true]
def A254620 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (x + x) + x) 2 (2 + (4 * y)) * x) x 1

end Sequence