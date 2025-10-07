/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023809 sequence
-/

namespace Sequence

@[OEIS := A023809, offset := 1, maxIndex := 69, derive := true]
def A023809 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ if (x % loop (λ (x _y) ↦ x * x) 2 2) ≤ 0 then x else 0) x

end Sequence