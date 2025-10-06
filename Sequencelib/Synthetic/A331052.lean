/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A331052 sequence
-/

namespace Sequence

@[OEIS := A331052, offset := 0, maxIndex := 8, derive := true]
def A331052 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 + y) (λ (x _y) ↦ 1 - x) x 1 1

end Sequence