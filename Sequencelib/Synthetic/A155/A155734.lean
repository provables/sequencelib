/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155734 sequence
-/

namespace Sequence

@[OEIS := A155734, offset := 0, maxIndex := 27, derive := true]
def A155734 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (_x y) ↦ (y + y) + y) x 3 1

end Sequence