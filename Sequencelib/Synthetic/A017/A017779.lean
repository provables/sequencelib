/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017779 sequence
-/

namespace Sequence

@[OEIS := A017779, offset := 0, maxIndex := 62, derive := true]
def A017779 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ x + x) (2 + 4) x / y) - x) x 1

end Sequence