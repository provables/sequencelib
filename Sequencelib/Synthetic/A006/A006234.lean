/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006234 sequence
-/

namespace Sequence

@[OEIS := A006234, offset := 3, maxIndex := 100, derive := true]
def A006234 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop2 (λ (x y) ↦ ((x + x) + x) + y) (λ (_x _y) ↦ 0) x 1 x

end Sequence