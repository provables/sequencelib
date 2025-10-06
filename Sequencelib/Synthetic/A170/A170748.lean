/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170748 sequence
-/

namespace Sequence

@[OEIS := A170748, offset := 0, maxIndex := 100, derive := true]
def A170748 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x y) ↦ (x * x) + y) 2 2 + y) * x) (λ (_x _y) ↦ 1) x 1 2

end Sequence