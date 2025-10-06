/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195391 sequence
-/

namespace Sequence

@[OEIS := A195391, offset := 0, maxIndex := 59, derive := true]
def A195391 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) ((2 * ((x + x) + x)) + x) 1

end Sequence