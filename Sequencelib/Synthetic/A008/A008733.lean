/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A008733 sequence
-/

namespace Sequence

@[OEIS := A008733, offset := 0, maxIndex := 100, derive := true]
def A008733 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 1 (loop (λ (x y) ↦ (2 + y) - x) x 2) / 2) / 2

end Sequence