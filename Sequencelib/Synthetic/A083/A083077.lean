/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083077 sequence
-/

namespace Sequence

@[OEIS := A083077, offset := 0, maxIndex := 100, derive := true]
def A083077 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x y) ↦ (2 + y) * x) 2 x - 2) - x) x 1

end Sequence