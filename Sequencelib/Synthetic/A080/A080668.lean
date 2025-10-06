/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080668 sequence
-/

namespace Sequence

@[OEIS := A080668, offset := 1, maxIndex := 20, derive := true]
def A080668 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (((2 + x) * x) + loop (λ (x y) ↦ x * y) x 1)) * (1 + x)

end Sequence