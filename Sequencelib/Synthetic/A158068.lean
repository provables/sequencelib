/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158068 sequence
-/

namespace Sequence

@[OEIS := A158068, offset := 0, maxIndex := 100, derive := true]
def A158068 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y) ↦ y) (λ (x y) ↦ y - x) x 0 1 % (1 + 4)) + 1

end Sequence