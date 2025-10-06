/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169119 sequence
-/

namespace Sequence

@[OEIS := A169119, offset := 0, maxIndex := 18, derive := true]
def A169119 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * 4) + y) * x) (λ (_x _y) ↦ 1) x 1 2

end Sequence