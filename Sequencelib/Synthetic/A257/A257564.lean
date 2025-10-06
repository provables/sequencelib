/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257564 sequence
-/

namespace Sequence

@[OEIS := A257564, offset := 0, maxIndex := 80, derive := true]
def A257564 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((loop (λ (x y) ↦ (x + y) / (1 + x)) (2 * (x + x)) 0 / 2) + 2) + x) / 2) - x) * 2) - 2) + x

end Sequence