/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178875 sequence
-/

namespace Sequence

@[OEIS := A178875, offset := 0, maxIndex := 100, derive := true]
def A178875 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * (x + x)) + y) x 0 / 3

end Sequence