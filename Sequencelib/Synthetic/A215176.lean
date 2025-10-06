/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A215176 sequence
-/

namespace Sequence

@[OEIS := A215176, offset := 1, maxIndex := 87, derive := true]
def A215176 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + ((y - (y / 2)) * x)) x 1 + 2

end Sequence