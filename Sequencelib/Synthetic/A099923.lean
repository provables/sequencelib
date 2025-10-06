/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099923 sequence
-/

namespace Sequence

@[OEIS := A099923, offset := 0, maxIndex := 100, derive := true]
def A099923 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ x * x) 2 x) 1 (loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 2 1)

end Sequence