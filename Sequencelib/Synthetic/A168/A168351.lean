/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168351 sequence
-/

namespace Sequence

@[OEIS := A168351, offset := 0, maxIndex := 100, derive := true]
def A168351 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x + y) x 0 * loop (λ (x _y) ↦ x * x) 2 x

end Sequence