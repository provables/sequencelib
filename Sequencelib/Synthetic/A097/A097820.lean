/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097820 sequence
-/

namespace Sequence

@[OEIS := A097820, offset := 0, maxIndex := 100, derive := true]
def A097820 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (loop (λ (x y) ↦ 1 + (2 * (x * y))) x 1)

end Sequence