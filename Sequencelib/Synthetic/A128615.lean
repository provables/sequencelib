/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A128615 sequence
-/

namespace Sequence

@[OEIS := A128615, offset := 0, maxIndex := 100, derive := true]
def A128615 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ 2 + y) (λ (x y) ↦ ((-x)) - y) x 1 x / 3

end Sequence