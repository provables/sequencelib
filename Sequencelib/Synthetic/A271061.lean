/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A271061 sequence
-/

namespace Sequence

@[OEIS := A271061, offset := 0, maxIndex := 15, derive := true]
def A271061 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (2 + y) * y) (λ (_x y) ↦ (2 + y) + y) x 1 2

end Sequence