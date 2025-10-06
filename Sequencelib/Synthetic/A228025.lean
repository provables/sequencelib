/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228025 sequence
-/

namespace Sequence

@[OEIS := A228025, offset := 1, maxIndex := 98, derive := true]
def A228025 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((2 * (x + x)) - y)) (λ (x _y) ↦ x) (2 + x) 1 0

end Sequence