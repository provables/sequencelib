/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158496 sequence
-/

namespace Sequence

@[OEIS := A158496, offset := 0, maxIndex := 66, derive := true]
def A158496 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) x 1 (2 + (x + x))

end Sequence