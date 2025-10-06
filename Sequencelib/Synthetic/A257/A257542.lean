/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257542 sequence
-/

namespace Sequence

@[OEIS := A257542, offset := 1, maxIndex := 72, derive := true]
def A257542 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ 2 + ((y + x) / 2)) x x

end Sequence