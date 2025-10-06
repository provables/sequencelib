/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A082973 sequence
-/

namespace Sequence

@[OEIS := A082973, offset := 0, maxIndex := 2, derive := true]
def A082973 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * loop (λ (x _y) ↦ x * x) y x) - x) x 2 - x

end Sequence