/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132723 sequence
-/

namespace Sequence

@[OEIS := A132723, offset := 0, maxIndex := 100, derive := true]
def A132723 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ y - x) x 2 2 + loop (λ (_x _y) ↦ 0) x 1

end Sequence