/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017292 sequence
-/

namespace Sequence

@[OEIS := A017292, offset := 0, maxIndex := 100, derive := true]
def A017292 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x) 3 (1 + ((x + x) * (4 + 1))) 1

end Sequence