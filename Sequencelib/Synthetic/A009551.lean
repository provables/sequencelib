/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A009551 sequence
-/

namespace Sequence

@[OEIS := A009551, offset := 0, maxIndex := 100, derive := true]
def A009551 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 - (x % 4)) + x * y) x 0

end Sequence