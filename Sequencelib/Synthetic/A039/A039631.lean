/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039631 sequence
-/

namespace Sequence

@[OEIS := A039631, offset := 5, maxIndex := 10, derive := true]
def A039631 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (loop2 (λ (_x y) ↦ 2 + y) (λ (x _y) ↦ 2 * (x + x)) x 0 1 / 2) - x / 2

end Sequence