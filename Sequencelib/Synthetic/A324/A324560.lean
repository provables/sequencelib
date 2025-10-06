/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A324560 sequence
-/

namespace Sequence

@[OEIS := A324560, offset := 1, maxIndex := 66, derive := true]
def A324560 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (x % (2 + (x % 2)))) (if x ≤ 0 then 1 else 2 + x)

end Sequence