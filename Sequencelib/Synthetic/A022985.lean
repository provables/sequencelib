/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022985 sequence
-/

namespace Sequence

@[OEIS := A022985, offset := 0, maxIndex := 60, derive := true]
def A022985 (x : ℕ) : ℤ :=
  2 + (loop (λ (x y) ↦ (x * x) + y) 2 2 - x)

end Sequence