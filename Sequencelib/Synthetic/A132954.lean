/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132954 sequence
-/

namespace Sequence

@[OEIS := A132954, offset := 0, maxIndex := 73, derive := true]
def A132954 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ 1 + y) (λ (x y) ↦ y - x) x 0 2 + loop (λ (x _y) ↦ (-x)) x 1

end Sequence