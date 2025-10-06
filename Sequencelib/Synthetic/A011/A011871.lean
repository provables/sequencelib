/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011871 sequence
-/

namespace Sequence

@[OEIS := A011871, offset := 0, maxIndex := 66, derive := true]
def A011871 (x : ℕ) : ℕ :=
  Int.toNat <| ((x * x) - x) / (2 + loop (λ (x _y) ↦ x * x) 2 2)

end Sequence