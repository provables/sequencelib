/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099137 sequence
-/

namespace Sequence

@[OEIS := A099137, offset := 0, maxIndex := 7, derive := true]
def A099137 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) + ((x - 1) * x) / 2) x 2

end Sequence