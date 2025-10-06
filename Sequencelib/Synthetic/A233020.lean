/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A233020 sequence
-/

namespace Sequence

@[OEIS := A233020, offset := 1, maxIndex := 100, derive := true]
def A233020 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + y)) + x) (λ (x _y) ↦ x) x 3 0

end Sequence