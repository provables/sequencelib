/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246313 sequence
-/

namespace Sequence

@[OEIS := A246313, offset := 0, maxIndex := 100, derive := true]
def A246313 (x : ℕ) : ℤ :=
  (loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ (2 * (x + y)) + y) x 0 1 * 2) - 1

end Sequence