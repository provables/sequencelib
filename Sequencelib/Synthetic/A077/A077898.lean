/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077898 sequence
-/

namespace Sequence

@[OEIS := A077898, offset := 0, maxIndex := 100, derive := true]
def A077898 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ 1 + ((y - x) - x)) x 1

end Sequence