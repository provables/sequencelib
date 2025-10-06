/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A093382 sequence
-/

namespace Sequence

@[OEIS := A093382, offset := 1, maxIndex := 3, derive := true]
def A093382 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (2 * (2 + loop (λ (x y) ↦ 2 * ((2 + y) * x)) x 2))) + 2

end Sequence