/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021039 sequence
-/

namespace Sequence

@[OEIS := A021039, offset := 0, maxIndex := 98, derive := true]
def A021039 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 2 + (3 * (x % (1 + (2 + 4))))) x 1 / 2

end Sequence