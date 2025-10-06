/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048474 sequence
-/

namespace Sequence

@[OEIS := A048474, offset := 0, maxIndex := 100, derive := true]
def A048474 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (x y) ↦ (x + x) + y) (λ (_x _y) ↦ 0) x x x

end Sequence