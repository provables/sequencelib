/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A293067 sequence
-/

namespace Sequence

@[OEIS := A293067, offset := 0, maxIndex := 100, derive := true]
def A293067 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * (((x - 1) + x) - y)) (λ (x _y) ↦ x) (x - 1) 1 0 * 2) - 2

end Sequence