/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063225 sequence
-/

namespace Sequence

@[OEIS := A063225, offset := 1, maxIndex := 50, derive := true]
def A063225 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (x _y) ↦ (x % 2) + (x + 3)) x x + 2)

end Sequence