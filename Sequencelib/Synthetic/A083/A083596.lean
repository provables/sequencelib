/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083596 sequence
-/

namespace Sequence

@[OEIS := A083596, offset := 0, maxIndex := 13, derive := true]
def A083596 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ (2 * ((2 / x) + x)) + x) x 1

end Sequence