/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071235 sequence
-/

namespace Sequence

@[OEIS := A071235, offset := 0, maxIndex := 19, derive := true]
def A071235 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (((x * x) * x) + x) * x) 1 ((x * x) * x) / 2

end Sequence