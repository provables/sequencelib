/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033591 sequence
-/

namespace Sequence

@[OEIS := A033591, offset := 0, maxIndex := 100, derive := true]
def A033591 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + (x + y)) (2 * (x + x)) 1 * (1 + (x * 3))

end Sequence