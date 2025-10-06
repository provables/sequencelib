/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170416 sequence
-/

namespace Sequence

@[OEIS := A170416, offset := 0, maxIndex := 15, derive := true]
def A170416 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x y) ↦ (2 + y) * x) 2 2 - y) * x) (λ (_x _y) ↦ 2) x 1 1

end Sequence