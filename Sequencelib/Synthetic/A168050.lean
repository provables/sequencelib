/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168050 sequence
-/

namespace Sequence

@[OEIS := A168050, offset := 0, maxIndex := 100, derive := true]
def A168050 (x : ℕ) : ℤ :=
  1 + (loop (λ (_x y) ↦ y) (x / 2) x - x)

end Sequence