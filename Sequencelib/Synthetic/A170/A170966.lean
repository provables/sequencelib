/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170966 sequence
-/

namespace Sequence

@[OEIS := A170966, offset := 0, maxIndex := 15, derive := true]
def A170966 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x % y) + x) (λ (x _y) ↦ 1 + x) x 1 1 % 2

end Sequence