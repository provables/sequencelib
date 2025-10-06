/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094623 sequence
-/

namespace Sequence

@[OEIS := A094623, offset := 0, maxIndex := 100, derive := true]
def A094623 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + ((1 + 4) * y)) (λ (x _y) ↦ x + x) x 1 0 - 1

end Sequence