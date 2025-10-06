/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083231 sequence
-/

namespace Sequence

@[OEIS := A083231, offset := 0, maxIndex := 21, derive := true]
def A083231 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ (x * loop (λ (x _y) ↦ x * x) 2 2) + y) x 1 2

end Sequence