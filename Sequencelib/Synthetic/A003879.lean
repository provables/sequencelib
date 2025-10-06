/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003879 sequence
-/

namespace Sequence

@[OEIS := A003879, offset := 1, maxIndex := 6, derive := true]
def A003879 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (_x _y) ↦ 2) (x - 2) (x % 2) + x)

end Sequence