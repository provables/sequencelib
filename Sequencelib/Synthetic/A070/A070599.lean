/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070599 sequence
-/

namespace Sequence

@[OEIS := A070599, offset := 0, maxIndex := 92, derive := true]
def A070599 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 2 x * x) % (loop (λ (x _y) ↦ x * x) 2 2 - 2)

end Sequence