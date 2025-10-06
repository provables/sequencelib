/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275698 sequence
-/

namespace Sequence

@[OEIS := A275698, offset := 0, maxIndex := 8, derive := true]
def A275698 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 3 + x * y) (λ (x y) ↦ x * y) x 2 1

end Sequence