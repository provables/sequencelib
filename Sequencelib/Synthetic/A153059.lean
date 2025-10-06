/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A153059 sequence
-/

namespace Sequence

@[OEIS := A153059, offset := 0, maxIndex := 14, derive := true]
def A153059 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (x * x) - y) x 0

end Sequence