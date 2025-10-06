/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A248572 sequence
-/

namespace Sequence

@[OEIS := A248572, offset := 0, maxIndex := 100, derive := true]
def A248572 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x y) ↦ (2 + (2 + y)) * x) 2 x - x)

end Sequence