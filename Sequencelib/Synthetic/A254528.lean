/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254528 sequence
-/

namespace Sequence

@[OEIS := A254528, offset := 0, maxIndex := 75, derive := true]
def A254528 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (((((((x / 2) + x) / ((2 * 2) + 1)) / 2) + x) + y) % 2) + x) x 1 + 1) / 2

end Sequence