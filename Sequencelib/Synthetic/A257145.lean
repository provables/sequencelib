/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A257145 sequence
-/

namespace Sequence

@[OEIS := A257145, offset := 0, maxIndex := 100, derive := true]
def A257145 (x : ℕ) : ℤ :=
  2 - (loop (λ (_x y) ↦ 2 + y) x 1 % ((2 * 2) + 1))

end Sequence