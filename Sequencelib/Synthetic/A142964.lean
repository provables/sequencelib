/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A142964 sequence
-/

namespace Sequence

@[OEIS := A142964, offset := 0, maxIndex := 31, derive := true]
def A142964 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * (x + y)) x 2 - 1

end Sequence