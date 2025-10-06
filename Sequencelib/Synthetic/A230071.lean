/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A230071 sequence
-/

namespace Sequence

@[OEIS := A230071, offset := 0, maxIndex := 22, derive := true]
def A230071 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 - (y % 2)) + x * y) x 0 * 2

end Sequence