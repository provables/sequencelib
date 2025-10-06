/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027434 sequence
-/

namespace Sequence

@[OEIS := A027434, offset := 1, maxIndex := 100, derive := true]
def A027434 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((y + y) / ((x * x) / 2)) + x) x 2

end Sequence