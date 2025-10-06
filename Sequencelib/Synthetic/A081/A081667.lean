/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081667 sequence
-/

namespace Sequence

@[OEIS := A081667, offset := 0, maxIndex := 23, derive := true]
def A081667 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (loop (λ (x y) ↦ x + y) x x) 1 0

end Sequence