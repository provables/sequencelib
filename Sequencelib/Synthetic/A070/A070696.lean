/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070696 sequence
-/

namespace Sequence

@[OEIS := A070696, offset := 0, maxIndex := 92, derive := true]
def A070696 (x : ℕ) : ℕ :=
  Int.toNat <| x % (loop (λ (x _y) ↦ x * x) 2 2 - 2)

end Sequence