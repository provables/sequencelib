/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A293688 sequence
-/

namespace Sequence

@[OEIS := A293688, offset := 0, maxIndex := 100, derive := true]
def A293688 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ ((y * y) / (2 + x)) + y) (1 + x) 0 - 1) - x) * (1 + x)

end Sequence