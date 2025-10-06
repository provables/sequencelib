/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083027 sequence
-/

namespace Sequence

@[OEIS := A083027, offset := 0, maxIndex := 24, derive := true]
def A083027 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (((1 + ((x / 2) / 2)) + y) / 2) + y) x 0

end Sequence