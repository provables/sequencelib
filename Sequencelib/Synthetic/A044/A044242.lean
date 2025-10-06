/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A044242 sequence
-/

namespace Sequence

@[OEIS := A044242, offset := 1, maxIndex := 40, derive := true]
def A044242 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ 2 * ((x + x) + y)) 3 x

end Sequence