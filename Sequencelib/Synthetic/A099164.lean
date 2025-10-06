/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099164 sequence
-/

namespace Sequence

@[OEIS := A099164, offset := 0, maxIndex := 26, derive := true]
def A099164 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((x - loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (y - 1) 1 0) + x) + x) x 1

end Sequence