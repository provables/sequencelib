/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A314838 sequence
-/

namespace Sequence

@[OEIS := A314838, offset := 0, maxIndex := 49, derive := true]
def A314838 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 + (((x / 2) / 2) / 2)) + 4 * y) x 1

end Sequence