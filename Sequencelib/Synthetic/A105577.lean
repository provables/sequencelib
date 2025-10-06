/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105577 sequence
-/

namespace Sequence

@[OEIS := A105577, offset := 0, maxIndex := 43, derive := true]
def A105577 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 2 + (x + y)) (λ (x _y) ↦ 1 - (x + x)) x 1 2

end Sequence