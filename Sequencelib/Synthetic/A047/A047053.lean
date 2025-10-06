/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047053 sequence
-/

namespace Sequence

@[OEIS := A047053, offset := 0, maxIndex := 16, derive := true]
def A047053 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * (2 * (x * y))) x 1

end Sequence