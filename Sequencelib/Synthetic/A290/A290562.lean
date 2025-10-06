/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290562 sequence
-/

namespace Sequence

@[OEIS := A290562, offset := 0, maxIndex := 100, derive := true]
def A290562 (x : ℕ) : ℤ :=
  x - loop2 (λ (_x y) ↦ (-y)) (λ (x _y) ↦ x) x 1 0

end Sequence