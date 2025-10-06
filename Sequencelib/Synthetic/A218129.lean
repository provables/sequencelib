/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A218129 sequence
-/

namespace Sequence

@[OEIS := A218129, offset := 0, maxIndex := 4, derive := true]
def A218129 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ x + x) x 1 / 2) + y) x 1

end Sequence