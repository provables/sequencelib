/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006347 sequence
-/

namespace Sequence

@[OEIS := A006347, offset := 1, maxIndex := 100, derive := true]
def A006347 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ (-x)) y 2 + x * y) + x) (1 + x) 1 / 2

end Sequence