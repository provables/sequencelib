/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A250121 sequence
-/

namespace Sequence

@[OEIS := A250121, offset := 0, maxIndex := 41, derive := true]
def A250121 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + ((1 + x) * loop (λ (x y) ↦ (2 + y) * x) 2 x)) / ((2 * 2) + 1)) + 1

end Sequence