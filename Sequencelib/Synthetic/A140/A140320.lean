/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140320 sequence
-/

namespace Sequence

@[OEIS := A140320, offset := 0, maxIndex := 27, derive := true]
def A140320 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + loop2 (λ (x y) ↦ (x * y) + x) (λ (_x _y) ↦ 2) x x 1

end Sequence