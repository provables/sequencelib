/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048745 sequence
-/

namespace Sequence

@[OEIS := A048745, offset := 0, maxIndex := 100, derive := true]
def A048745 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((x + x) + y)) (λ (x _y) ↦ x) x 2 1 - 1

end Sequence