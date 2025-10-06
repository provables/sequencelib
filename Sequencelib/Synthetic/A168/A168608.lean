/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168608 sequence
-/

namespace Sequence

@[OEIS := A168608, offset := 2, maxIndex := 100, derive := true]
def A168608 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 + loop2 (λ (_x y) ↦ 2 + y) (λ (_x _y) ↦ 2) x 2 (1 + 4)

end Sequence