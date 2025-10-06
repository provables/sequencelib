/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A198689 sequence
-/

namespace Sequence

@[OEIS := A198689, offset := 0, maxIndex := 100, derive := true]
def A198689 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * (2 * loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) x 2)) - 1

end Sequence