/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077588 sequence
-/

namespace Sequence

@[OEIS := A077588, offset := 0, maxIndex := 47, derive := true]
def A077588 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + ((x - 1) * loop (λ (_x y) ↦ 3 * y) x 1)

end Sequence