/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A111282 sequence
-/

namespace Sequence

@[OEIS := A111282, offset := 1, maxIndex := 50, derive := true]
def A111282 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 0 2

end Sequence