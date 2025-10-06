/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113679 sequence
-/

namespace Sequence

@[OEIS := A113679, offset := 0, maxIndex := 66, derive := true]
def A113679 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ (-y)) (λ (_x _y) ↦ 2) x 1 0

end Sequence