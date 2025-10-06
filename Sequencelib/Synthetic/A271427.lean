/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271427 sequence
-/

namespace Sequence

@[OEIS := A271427, offset := 0, maxIndex := 22, derive := true]
def A271427 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (3 * (x + y))) + y) (λ (x _y) ↦ x) x 0 1

end Sequence