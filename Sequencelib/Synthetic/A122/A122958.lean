/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122958 sequence
-/

namespace Sequence

@[OEIS := A122958, offset := 0, maxIndex := 100, derive := true]
def A122958 (x : ℕ) : ℤ :=
  2 - loop (λ (x _y) ↦ x + x) (x - 1) 1

end Sequence