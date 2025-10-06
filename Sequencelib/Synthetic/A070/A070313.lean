/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070313 sequence
-/

namespace Sequence

@[OEIS := A070313, offset := 0, maxIndex := 31, derive := true]
def A070313 (x : ℕ) : ℤ :=
  1 - (loop (λ (x y) ↦ (x - y) + x) x 1 + x)

end Sequence