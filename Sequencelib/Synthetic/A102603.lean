/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102603 sequence
-/

namespace Sequence

@[OEIS := A102603, offset := 0, maxIndex := 51, derive := true]
def A102603 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (2 * loop (λ (x y) ↦ 2 + ((2 + y) * x)) 2 x)

end Sequence