/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153795 sequence
-/

namespace Sequence

@[OEIS := A153795, offset := 0, maxIndex := 100, derive := true]
def A153795 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ 2 - (x + x)) 4 x - x) * x

end Sequence