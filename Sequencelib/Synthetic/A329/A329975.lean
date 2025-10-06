/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329975 sequence
-/

namespace Sequence

@[OEIS := A329975, offset := 1, maxIndex := 57, derive := true]
def A329975 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((1 + loop (λ (x y) ↦ x / (2 + y)) 2 x) + x) / 2) / 2) + 1) + x) / 2) / 2) / 2) + x) + x) / 2) + x) + 2) +
      x) +
    2) +
  x

end Sequence