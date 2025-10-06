/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016160 sequence
-/

namespace Sequence

@[OEIS := A016160, offset := 0, maxIndex := 10, derive := true]
def A016160 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ ((2 * (x + x)) + x) + y) (λ (_x y) ↦ 2 * ((y + y) + y)) x 0 1

end Sequence