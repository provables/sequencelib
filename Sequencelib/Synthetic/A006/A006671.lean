/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006671 sequence
-/

namespace Sequence

@[OEIS := A006671, offset := 3, maxIndex := 74, derive := true]
def A006671 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ 2 + ((2 + y) / (1 + x))) ((1 + x) + x) 1

end Sequence