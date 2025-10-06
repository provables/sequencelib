/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161617 sequence
-/

namespace Sequence

@[OEIS := A161617, offset := 0, maxIndex := 100, derive := true]
def A161617 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (x * loop (λ (x y) ↦ 2 * (2 + (x * y))) 2 x)

end Sequence