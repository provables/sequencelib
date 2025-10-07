/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172432 sequence
-/

namespace Sequence

@[OEIS := A172432, offset := 0, maxIndex := 18, derive := true]
def A172432 (x : ℕ) : ℤ :=
  x + comprN (λ (_x) ↦ 0) ((x - 2) - 2 * 4)

end Sequence