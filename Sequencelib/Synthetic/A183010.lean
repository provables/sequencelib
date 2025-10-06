/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183010 sequence
-/

namespace Sequence

@[OEIS := A183010, offset := 0, maxIndex := 100, derive := true]
def A183010 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ x * y) 4 x - 1

end Sequence