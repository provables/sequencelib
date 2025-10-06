/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187892 sequence
-/

namespace Sequence

@[OEIS := A187892, offset := 0, maxIndex := 37, derive := true]
def A187892 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + (2 + y)) (λ (x y) ↦ (x + y) - 1) x 0 2

end Sequence