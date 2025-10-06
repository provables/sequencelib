/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099142 sequence
-/

namespace Sequence

@[OEIS := A099142, offset := 0, maxIndex := 50, derive := true]
def A099142 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ y - x) (λ (x y) ↦ 3 * (x + y)) (x + x) 1 2

end Sequence