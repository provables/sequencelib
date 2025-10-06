/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099158 sequence
-/

namespace Sequence

@[OEIS := A099158, offset := 0, maxIndex := 50, derive := true]
def A099158 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x y) ↦ (2 * (x + y)) + y) (x + x) 0 1 / 2

end Sequence