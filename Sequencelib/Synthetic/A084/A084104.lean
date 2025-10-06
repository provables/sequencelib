/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A084104 sequence
-/

namespace Sequence

@[OEIS := A084104, offset := 0, maxIndex := 100, derive := true]
def A084104 (x : ℕ) : ℕ :=
  Int.toNat <| 2 - loop2 (λ (x y) ↦ (x - 2) - y) (λ (x _y) ↦ x) x 1 1

end Sequence