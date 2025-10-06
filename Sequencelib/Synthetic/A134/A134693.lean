/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134693 sequence
-/

namespace Sequence

@[OEIS := A134693, offset := 0, maxIndex := 40, derive := true]
def A134693 (x : ℕ) : ℕ :=
  Int.toNat <| 3 * loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ x - y) x 1 2

end Sequence