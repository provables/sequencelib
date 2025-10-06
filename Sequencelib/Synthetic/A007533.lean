/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007533 sequence
-/

namespace Sequence

@[OEIS := A007533, offset := 0, maxIndex := 41, derive := true]
def A007533 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + (loop (λ (x y) ↦ (2 * ((x + x) + y)) + x) 2 x * x)

end Sequence