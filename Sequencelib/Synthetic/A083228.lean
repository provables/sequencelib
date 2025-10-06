/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083228 sequence
-/

namespace Sequence

@[OEIS := A083228, offset := 0, maxIndex := 13, derive := true]
def A083228 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) + y) (λ (x _y) ↦ x) (loop (λ (x y) ↦ x + y) x x) 1 0

end Sequence