/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163322 sequence
-/

namespace Sequence

@[OEIS := A163322, offset := 0, maxIndex := 100, derive := true]
def A163322 (x : ℕ) : ℤ :=
  2 * (loop (λ (x _y) ↦ (x - 2) + x) 2 (x * x) * x)

end Sequence