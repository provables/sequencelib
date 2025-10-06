/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070650 sequence
-/

namespace Sequence

@[OEIS := A070650, offset := 0, maxIndex := 84, derive := true]
def A070650 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ x * x) 2 x * x) * x) % ((loop (λ (x _y) ↦ (2 * (x + x)) + x) 2 1 + 1) + 1)

end Sequence