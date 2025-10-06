/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139183 sequence
-/

namespace Sequence

@[OEIS := A139183, offset := 4, maxIndex := 20, derive := true]
def A139183 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 + y)) * x) x 3 - 1

end Sequence