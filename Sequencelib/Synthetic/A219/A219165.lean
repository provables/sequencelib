/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A219165 sequence
-/

namespace Sequence

@[OEIS := A219165, offset := 0, maxIndex := 3, derive := true]
def A219165 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) - 2) (x + x) (2 + 4)

end Sequence