/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168359 sequence
-/

namespace Sequence

@[OEIS := A168359, offset := 0, maxIndex := 3, derive := true]
def A168359 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) (loop (λ (x _y) ↦ x + x) x (x - 2)) 1

end Sequence