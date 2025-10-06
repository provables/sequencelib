/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008616 sequence
-/

namespace Sequence

@[OEIS := A008616, offset := 0, maxIndex := 100, derive := true]
def A008616 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y / (1 + 4)) + 1) - x) x 1

end Sequence