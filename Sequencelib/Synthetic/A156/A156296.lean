/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156296 sequence
-/

namespace Sequence

@[OEIS := A156296, offset := 0, maxIndex := 63, derive := true]
def A156296 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ ((x - 1) + x) + x) y 1 * x) x 1

end Sequence