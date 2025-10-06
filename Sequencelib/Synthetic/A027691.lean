/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027691 sequence
-/

namespace Sequence

@[OEIS := A027691, offset := 0, maxIndex := 100, derive := true]
def A027691 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + (2 * loop (λ (x y) ↦ x + y) x 2)

end Sequence