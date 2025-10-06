/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A350926 sequence
-/

namespace Sequence

@[OEIS := A350926, offset := 0, maxIndex := 18, derive := true]
def A350926 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((loop (λ (x y) ↦ x * y) 4 x - 2) - x) - 2) - y) (λ (x _y) ↦ x) x 1 2

end Sequence