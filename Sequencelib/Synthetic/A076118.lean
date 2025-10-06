/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076118 sequence
-/

namespace Sequence

@[OEIS := A076118, offset := 0, maxIndex := 100, derive := true]
def A076118 (x : ℕ) : ℤ :=
  ((loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ y - x) x 1 1 * x) + 1) / 3

end Sequence