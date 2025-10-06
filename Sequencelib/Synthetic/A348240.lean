/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348240 sequence
-/

namespace Sequence

@[OEIS := A348240, offset := 1, maxIndex := 5, derive := true]
def A348240 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((2 * (x * y)) - x) / 4) + 2) * 2) x 3 - 2

end Sequence