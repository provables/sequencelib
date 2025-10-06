/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028917 sequence
-/

namespace Sequence

@[OEIS := A028917, offset := 1, maxIndex := 12, derive := true]
def A028917 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 + y)) * x) ((x + x) + x) 1 / (1 + x)

end Sequence