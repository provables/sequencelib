/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070697 sequence
-/

namespace Sequence

@[OEIS := A070697, offset := 0, maxIndex := 89, derive := true]
def A070697 (x : ℕ) : ℤ :=
  ((x * x) * x) % (loop (λ (x _y) ↦ x * x) 2 2 - 1)

end Sequence