/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174737 sequence
-/

namespace Sequence

@[OEIS := A174737, offset := 0, maxIndex := 75, derive := true]
def A174737 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ (-y)) (λ (x y) ↦ x + y) x 2 1

end Sequence