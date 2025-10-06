/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A006624 sequence
-/

namespace Sequence

@[OEIS := A006624, offset := 2, maxIndex := 9, derive := true]
def A006624 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (((((((((((((((2 * loop (λ (x y) ↦ 2 + (x + y)) x x) - x / 2) + x) + 1) + x) / 2) + x) + x) / 2) + x) + x) + 1) + 2) +
      2) +
    2) +
  2

end Sequence