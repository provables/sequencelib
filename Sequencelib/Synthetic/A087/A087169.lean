/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087169 sequence
-/

namespace Sequence

@[OEIS := A087169, offset := 0, maxIndex := 50, derive := true]
def A087169 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x + (x * 2)) (x * 2) 1 0

end Sequence