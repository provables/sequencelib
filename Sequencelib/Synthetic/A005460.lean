/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005460 sequence
-/

namespace Sequence

@[OEIS := A005460, offset := 0, maxIndex := 100, derive := true]
def A005460 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ ((1 + y) * (y * y)) + x) (1 + x) 1 / 2) - 1) + 1) * loop (λ (x y) ↦ x * y) x 1

end Sequence