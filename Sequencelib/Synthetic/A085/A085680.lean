/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085680 sequence
-/

namespace Sequence

@[OEIS := A085680, offset := 2, maxIndex := 50, derive := true]
def A085680 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ ((y - if x ≤ 0 then 0 else 2) / ((2 * 2) + 1)) + x) x 1 + x

end Sequence