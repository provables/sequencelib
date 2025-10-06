/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A005008 sequence
-/

namespace Sequence

@[OEIS := A005008, offset := 0, maxIndex := 22, derive := true]
def A005008 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ x * y) x 1 - x * x

end Sequence