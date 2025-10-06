/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110164 sequence
-/

namespace Sequence

@[OEIS := A110164, offset := 0, maxIndex := 32, derive := true]
def A110164 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (y - x) - x) (λ (_x _y) ↦ 0) x 2 1 / 2

end Sequence