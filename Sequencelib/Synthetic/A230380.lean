/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A230380 sequence
-/

namespace Sequence

@[OEIS := A230380, offset := 3, maxIndex := 10, derive := true]
def A230380 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x / 2) x 1 x / 2) + 1

end Sequence