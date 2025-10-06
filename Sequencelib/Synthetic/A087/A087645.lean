/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087645 sequence
-/

namespace Sequence

@[OEIS := A087645, offset := 2, maxIndex := 100, derive := true]
def A087645 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (((2 + y) * (y * y)) + x) + y) x 2

end Sequence