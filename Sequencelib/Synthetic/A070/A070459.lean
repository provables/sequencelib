/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070459 sequence
-/

namespace Sequence

@[OEIS := A070459, offset := 0, maxIndex := 100, derive := true]
def A070459 (x : ℕ) : ℕ :=
  Int.toNat <| (x * x) % (loop (λ (x _y) ↦ 2 + (x * x)) 2 2 - 1)

end Sequence