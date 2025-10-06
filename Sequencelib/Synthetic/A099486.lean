/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099486 sequence
-/

namespace Sequence

@[OEIS := A099486, offset := 0, maxIndex := 24, derive := true]
def A099486 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) x 1 0 / 2)) / 2

end Sequence