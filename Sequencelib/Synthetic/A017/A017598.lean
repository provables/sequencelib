/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017598 sequence
-/

namespace Sequence

@[OEIS := A017598, offset := 0, maxIndex := 13, derive := true]
def A017598 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((x * x) * y) * y) (λ (x _y) ↦ x * 2) 2 (3 * (1 + (x + x))) 2

end Sequence