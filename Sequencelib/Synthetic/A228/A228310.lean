/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228310 sequence
-/

namespace Sequence

@[OEIS := A228310, offset := 2, maxIndex := 23, derive := true]
def A228310 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y) ↦ 4 * x) x (((2 + x) + 2) + 1) * (2 + x)

end Sequence