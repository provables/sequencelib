/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033067 sequence
-/

namespace Sequence

@[OEIS := A033067, offset := 1, maxIndex := 65, derive := true]
def A033067 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ y) (x - (1 + (2 * (2 + 4)))) 1 + x

end Sequence