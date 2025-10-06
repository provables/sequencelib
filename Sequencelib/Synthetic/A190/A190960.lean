/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A190960 sequence
-/

namespace Sequence

@[OEIS := A190960, offset := 0, maxIndex := 100, derive := true]
def A190960 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y + x) + y) (λ (x y) ↦ (y - x) * 2) x 0 1 / 2

end Sequence