/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143856 sequence
-/

namespace Sequence

@[OEIS := A143856, offset := 1, maxIndex := 100, derive := true]
def A143856 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (x _y) ↦ (2 * (x + x)) - 1) 2 x * x)

end Sequence