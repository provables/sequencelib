/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164965 sequence
-/

namespace Sequence

@[OEIS := A164965, offset := 0, maxIndex := 83, derive := true]
def A164965 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (_x y) ↦ y) (λ (x y) ↦ y - x) x 0 1

end Sequence