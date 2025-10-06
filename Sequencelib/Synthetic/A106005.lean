/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106005 sequence
-/

namespace Sequence

@[OEIS := A106005, offset := 0, maxIndex := 100, derive := true]
def A106005 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1 % (loop (λ (x _y) ↦ x * x) 2 2 - 1)

end Sequence