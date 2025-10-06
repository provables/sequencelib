/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174474 sequence
-/

namespace Sequence

@[OEIS := A174474, offset := 0, maxIndex := 100, derive := true]
def A174474 (x : ℕ) : ℤ :=
  (x - loop (λ (x y) ↦ y - x) x 2) * (x / 2)

end Sequence