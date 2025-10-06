/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A277236 sequence
-/

namespace Sequence

@[OEIS := A277236, offset := 0, maxIndex := 30, derive := true]
def A277236 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x y) ↦ x - y) x 3 1 / 2

end Sequence