/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A330555 sequence
-/

namespace Sequence

@[OEIS := A330555, offset := 0, maxIndex := 5, derive := true]
def A330555 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 + (2 * (2 + (2 * (x % 2))))) (x % (1 + 4)) 2 - 1

end Sequence