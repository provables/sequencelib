/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A143431 sequence
-/

namespace Sequence

@[OEIS := A143431, offset := 0, maxIndex := 100, derive := true]
def A143431 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ (-x)) (((x / 2) / 2) + x) 1

end Sequence