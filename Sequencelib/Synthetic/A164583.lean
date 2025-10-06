/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164583 sequence
-/

namespace Sequence

@[OEIS := A164583, offset := 0, maxIndex := 19, derive := true]
def A164583 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 1 (loop (λ (x _y) ↦ x + x) x (1 + (x + x)))

end Sequence