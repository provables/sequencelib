/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022994 sequence
-/

namespace Sequence

@[OEIS := A022994, offset := 0, maxIndex := 60, derive := true]
def A022994 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ 2 + (x * x)) 2 2 - x

end Sequence