/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A319196 sequence
-/

namespace Sequence

@[OEIS := A319196, offset := 0, maxIndex := 30, derive := true]
def A319196 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ y - x) (λ (x y) ↦ ((x + y) + y) + y) x 1 0

end Sequence