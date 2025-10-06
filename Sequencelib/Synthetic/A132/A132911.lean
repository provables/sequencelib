/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132911 sequence
-/

namespace Sequence

@[OEIS := A132911, offset := 0, maxIndex := 16, derive := true]
def A132911 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((1 + (y + y)) * (x * y)) - x) x 1

end Sequence