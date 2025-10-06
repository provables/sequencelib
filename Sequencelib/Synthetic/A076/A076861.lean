/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076861 sequence
-/

namespace Sequence

@[OEIS := A076861, offset := 3, maxIndex := 7, derive := true]
def A076861 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ 2 + x) (x + x) 1 0

end Sequence