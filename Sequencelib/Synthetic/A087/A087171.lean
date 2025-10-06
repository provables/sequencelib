/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087171 sequence
-/

namespace Sequence

@[OEIS := A087171, offset := 0, maxIndex := 23, derive := true]
def A087171 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x + ((x * 2) * 2)) (x + x) 1 0

end Sequence