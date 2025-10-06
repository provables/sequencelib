/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A116454 sequence
-/

namespace Sequence

@[OEIS := A116454, offset := 1, maxIndex := 30, derive := true]
def A116454 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 * (x + y)) + if x ≤ 0 then 0 else 1) x 0

end Sequence