/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168309 sequence
-/

namespace Sequence

@[OEIS := A168309, offset := 1, maxIndex := 84, derive := true]
def A168309 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ 1 - x) x 4

end Sequence