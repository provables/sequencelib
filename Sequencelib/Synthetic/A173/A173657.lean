/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173657 sequence
-/

namespace Sequence

@[OEIS := A173657, offset := 0, maxIndex := 27, derive := true]
def A173657 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop2 (λ (x y) ↦ (x + x) + y) (λ (_x y) ↦ (y + y) + y) x 2 1

end Sequence