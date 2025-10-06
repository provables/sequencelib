/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017615 sequence
-/

namespace Sequence

@[OEIS := A017615, offset := 0, maxIndex := 11, derive := true]
def A017615 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x * x) * x) * y) * y) (λ (x _y) ↦ x) 2 ((2 * ((1 + (x + x)) * 3)) + 1) 1

end Sequence