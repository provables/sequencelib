/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166978 sequence
-/

namespace Sequence

@[OEIS := A166978, offset := 0, maxIndex := 100, derive := true]
def A166978 (x : ℕ) : ℤ :=
  (2 * (2 * (2 * (x % 2)))) - loop (λ (x _y) ↦ x + x) x 1

end Sequence