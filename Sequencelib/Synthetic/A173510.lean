/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173510 sequence
-/

namespace Sequence

@[OEIS := A173510, offset := 0, maxIndex := 50, derive := true]
def A173510 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ (y / 2) + x) x 2 0

end Sequence