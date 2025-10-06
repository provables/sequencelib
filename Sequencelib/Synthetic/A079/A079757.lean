/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079757 sequence
-/

namespace Sequence

@[OEIS := A079757, offset := 0, maxIndex := 100, derive := true]
def A079757 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ loop (λ (_x _y) ↦ 1 - 3) x 1) x 1 1

end Sequence