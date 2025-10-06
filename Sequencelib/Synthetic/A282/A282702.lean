/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A282702 sequence
-/

namespace Sequence

@[OEIS := A282702, offset := 0, maxIndex := 100, derive := true]
def A282702 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + y)) + y) (λ (x y) ↦ x + y) x (3 + 1) 1

end Sequence