/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067404 sequence
-/

namespace Sequence

@[OEIS := A067404, offset := 0, maxIndex := 19, derive := true]
def A067404 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 + (2 + (2 + y))) * (x * y)) (λ (_x _y) ↦ 2) x 1 1

end Sequence