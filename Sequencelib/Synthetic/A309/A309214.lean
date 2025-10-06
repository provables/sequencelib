/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A309214 sequence
-/

namespace Sequence

@[OEIS := A309214, offset := 0, maxIndex := 100, derive := true]
def A309214 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ (-(x + 1))) x 0 x

end Sequence