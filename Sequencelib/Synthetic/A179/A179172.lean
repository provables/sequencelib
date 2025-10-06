/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179172 sequence
-/

namespace Sequence

@[OEIS := A179172, offset := 1, maxIndex := 2, derive := true]
def A179172 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ ((x * x) * x) - x) 1 ((2 * 4) + x) * (1 + x)) - 1

end Sequence