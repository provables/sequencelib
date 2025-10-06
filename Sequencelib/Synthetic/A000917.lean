/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000917 sequence
-/

namespace Sequence

@[OEIS := A000917, offset := 0, maxIndex := 100, derive := true]
def A000917 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (2 + y) * x) (1 + (x + x)) 1 / loop (λ (x y) ↦ (2 + y) * x) x 1) / loop (λ (x y) ↦ x * y) x 1

end Sequence