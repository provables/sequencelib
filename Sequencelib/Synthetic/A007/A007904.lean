/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007904 sequence
-/

namespace Sequence

@[OEIS := A007904, offset := 0, maxIndex := 100, derive := true]
def A007904 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((loop (λ (x y) ↦ (y * y) + x) x 1 * (1 + 4)) + 1) + x / 2) + x) / 2) + x) - 2

end Sequence