/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081489 sequence
-/

namespace Sequence

@[OEIS := A081489, offset := 1, maxIndex := 100, derive := true]
def A081489 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ (y * y) + x) x x

end Sequence