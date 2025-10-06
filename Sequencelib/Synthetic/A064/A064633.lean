/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064633 sequence
-/

namespace Sequence

@[OEIS := A064633, offset := 0, maxIndex := 74, derive := true]
def A064633 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 3 * ((2 + y) * (x * y))) x 1

end Sequence