/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173495 sequence
-/

namespace Sequence

@[OEIS := A173495, offset := 0, maxIndex := 100, derive := true]
def A173495 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) x 2 1) / 2

end Sequence