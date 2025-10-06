/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001544 sequence
-/

namespace Sequence

@[OEIS := A001544, offset := 0, maxIndex := 10, derive := true]
def A001544 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ 2 + (2 + (2 + y))) (λ (_x y) ↦ ((((((y * y) + y) + y) + y) + y) + y) + y) x 1 1

end Sequence