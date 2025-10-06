/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008642 sequence
-/

namespace Sequence

@[OEIS := A008642, offset := 0, maxIndex := 100, derive := true]
def A008642 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((y / 2) + x)) (x / 2) 1

end Sequence