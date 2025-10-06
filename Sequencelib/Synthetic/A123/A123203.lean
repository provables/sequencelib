/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123203 sequence
-/

namespace Sequence

@[OEIS := A123203, offset := 1, maxIndex := 100, derive := true]
def A123203 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 - x) + loop (λ (x y) ↦ 2 * (x + y)) x 0

end Sequence