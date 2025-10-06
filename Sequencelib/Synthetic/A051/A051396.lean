/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051396 sequence
-/

namespace Sequence

@[OEIS := A051396, offset := 0, maxIndex := 100, derive := true]
def A051396 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y - x) % 2) + (y - 2) * x) (x + x) 0

end Sequence