/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158665 sequence
-/

namespace Sequence

@[OEIS := A158665, offset := 0, maxIndex := 100, derive := true]
def A158665 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ (2 + (2 + y)) * x) 2 x - x) + y) 2 (x * x) - 2

end Sequence