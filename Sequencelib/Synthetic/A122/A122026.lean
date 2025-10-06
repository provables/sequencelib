/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122026 sequence
-/

namespace Sequence

@[OEIS := A122026, offset := 0, maxIndex := 6, derive := true]
def A122026 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ (x / 2) + x) x (2 + x) - x) / 3

end Sequence