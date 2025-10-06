/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108225 sequence
-/

namespace Sequence

@[OEIS := A108225, offset := 0, maxIndex := 13, derive := true]
def A108225 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 + (((x - 1) * x) / 2)) x 0

end Sequence