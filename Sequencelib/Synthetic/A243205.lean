/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A243205 sequence
-/

namespace Sequence

@[OEIS := A243205, offset := 1, maxIndex := 9, derive := true]
def A243205 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((y * y) * y) + x) / x) + y) x 1

end Sequence