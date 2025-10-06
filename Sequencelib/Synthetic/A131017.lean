/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131017 sequence
-/

namespace Sequence

@[OEIS := A131017, offset := 0, maxIndex := 100, derive := true]
def A131017 (x : ℕ) : ℤ :=
  loop (λ (_x _y) ↦ 2) (x % 3) (1 - (x % 2)) - x % 2

end Sequence