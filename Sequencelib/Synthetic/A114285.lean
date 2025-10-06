/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114285 sequence
-/

namespace Sequence

@[OEIS := A114285, offset := 0, maxIndex := 62, derive := true]
def A114285 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ (-x)) x 1 - x

end Sequence