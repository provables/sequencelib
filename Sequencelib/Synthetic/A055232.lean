/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055232 sequence
-/

namespace Sequence

@[OEIS := A055232, offset := 0, maxIndex := 100, derive := true]
def A055232 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ (x * x) + x) 2 y / y) - x) x 1

end Sequence