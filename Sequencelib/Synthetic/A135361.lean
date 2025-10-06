/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135361 sequence
-/

namespace Sequence

@[OEIS := A135361, offset := 0, maxIndex := 8, derive := true]
def A135361 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((x * x) * x)) x 0

end Sequence