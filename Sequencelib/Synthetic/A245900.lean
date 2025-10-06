/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245900 sequence
-/

namespace Sequence

@[OEIS := A245900, offset := 1, maxIndex := 8, derive := true]
def A245900 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop2 (λ (x y) ↦ (2 * (x + y)) + x) (λ (x y) ↦ x - y) x 1 1 / (1 + x)) + 1) / 2) + 1) / 2

end Sequence