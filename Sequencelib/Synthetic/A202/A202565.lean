/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A202565 sequence
-/

namespace Sequence

@[OEIS := A202565, offset := 1, maxIndex := 15, derive := true]
def A202565 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ (2 + (2 * ((2 * (x + x)) + x))) - y) (λ (x _y) ↦ x) (x + x) 1 1 / 2) + 1

end Sequence