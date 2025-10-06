/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010845 sequence
-/

namespace Sequence

@[OEIS := A010845, offset := 0, maxIndex := 100, derive := true]
def A010845 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + (3 * (x * y))) x 1

end Sequence