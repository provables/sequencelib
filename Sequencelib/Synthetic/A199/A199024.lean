/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A199024 sequence
-/

namespace Sequence

@[OEIS := A199024, offset := 0, maxIndex := 100, derive := true]
def A199024 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x y) ↦ 2 + ((2 + y) * x)) 2 x - x) x 2 * 2) + 1

end Sequence