/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098878 sequence
-/

namespace Sequence

@[OEIS := A098878, offset := 0, maxIndex := 18, derive := true]
def A098878 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ (x * x) * x) 1 (loop (λ (x _y) ↦ x + x) x 1 - 1) - 2

end Sequence