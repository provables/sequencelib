/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273183 sequence
-/

namespace Sequence

@[OEIS := A273183, offset := 0, maxIndex := 3, derive := true]
def A273183 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x y) ↦ (2 + (2 + y)) * x) 2 2 - y) (λ (x _y) ↦ x) x 1 1

end Sequence