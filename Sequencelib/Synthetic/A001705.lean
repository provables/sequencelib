/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001705 sequence
-/

namespace Sequence

@[OEIS := A001705, offset := 0, maxIndex := 100, derive := true]
def A001705 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x * y) y 1 + x * y) + x) x 0

end Sequence