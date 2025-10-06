/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163070 sequence
-/

namespace Sequence

@[OEIS := A163070, offset := 0, maxIndex := 50, derive := true]
def A163070 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) ((x * 2) + x) (2 * 4) 1 / 2

end Sequence