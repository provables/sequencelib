/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021026 sequence
-/

namespace Sequence

@[OEIS := A021026, offset := 0, maxIndex := 98, derive := true]
def A021026 (x : ℕ) : ℕ :=
  Int.toNat <| 1 - loop (λ (_x y) ↦ (y % 2) - 4) x 1

end Sequence