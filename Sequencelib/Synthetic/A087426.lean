/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087426 sequence
-/

namespace Sequence

@[OEIS := A087426, offset := 0, maxIndex := 19, derive := true]
def A087426 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x + x) + x) x (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 0 1)

end Sequence