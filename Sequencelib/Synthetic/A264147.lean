/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A264147 sequence
-/

namespace Sequence

@[OEIS := A264147, offset := 0, maxIndex := 100, derive := true]
def A264147 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ (-y)) (λ (x y) ↦ y - x) x x 1

end Sequence