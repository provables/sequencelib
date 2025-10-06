/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003697 sequence
-/

namespace Sequence

@[OEIS := A003697, offset := 0, maxIndex := 13, derive := true]
def A003697 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop2 (λ (x y) ↦ (2 * (x + x)) - y) (λ (x _y) ↦ x) y 1 1 - x) x 1

end Sequence