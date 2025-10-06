/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004946 sequence
-/

namespace Sequence

@[OEIS := A004946, offset := 0, maxIndex := 34, derive := true]
def A004946 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + ((2 + x) * (x * y))) 2 2 * x

end Sequence