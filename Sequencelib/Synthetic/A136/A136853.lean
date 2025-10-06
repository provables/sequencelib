/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136853 sequence
-/

namespace Sequence

@[OEIS := A136853, offset := 1, maxIndex := 31, derive := true]
def A136853 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((x + x) + x) + y) (λ (x y) ↦ if (y + y) ≤ 0 then x else 0) x 0 1

end Sequence