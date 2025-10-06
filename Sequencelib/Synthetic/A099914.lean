/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099914 sequence
-/

namespace Sequence

@[OEIS := A099914, offset := 0, maxIndex := 20, derive := true]
def A099914 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 * (2 + ((2 * (x + x)) + x))) x 1

end Sequence