/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127966 sequence
-/

namespace Sequence

@[OEIS := A127966, offset := 11, maxIndex := 16, derive := true]
def A127966 (n : ℕ) : ℕ :=
  let x := n - 11
  Int.toNat <| ((loop (λ (x y) ↦ (2 * (x - y)) + (x + x)) x 1 - x) + 1) / if x ≤ 0 then 1 else 2

end Sequence