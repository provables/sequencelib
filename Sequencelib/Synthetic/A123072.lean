/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123072 sequence
-/

namespace Sequence

@[OEIS := A123072, offset := 0, maxIndex := 14, derive := true]
def A123072 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (1 + y) * (x * y)) (λ (_x y) ↦ 1 + y) x 1 x

end Sequence