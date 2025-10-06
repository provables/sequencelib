/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A045623 sequence
-/

namespace Sequence

@[OEIS := A045623, offset := 0, maxIndex := 32, derive := true]
def A045623 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (x + x) + y) (λ (_x _y) ↦ 1) x 1 x / 2) + 1

end Sequence