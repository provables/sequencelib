/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126564 sequence
-/

namespace Sequence

@[OEIS := A126564, offset := 0, maxIndex := 100, derive := true]
def A126564 (x : ℕ) : ℤ :=
  ((((((((((x - ((x / 2) / 2)) / 2) / 2) / 2) + x) / 2) / 2) + x) / 2) % 2) * loop (λ (x _y) ↦ (x - 1) + x) 1 0

end Sequence