/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135694 sequence
-/

namespace Sequence

@[OEIS := A135694, offset := 0, maxIndex := 83, derive := true]
def A135694 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ (-y)) (λ (x y) ↦ x + y) x 1 (x % 2)

end Sequence