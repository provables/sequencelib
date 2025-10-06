/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135449 sequence
-/

namespace Sequence

@[OEIS := A135449, offset := 0, maxIndex := 95, derive := true]
def A135449 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ ((((loop2 (λ (_x y) ↦ 2 + y) (λ (_x y) ↦ y) x 1 2 - if x ≤ 0 then 1 else x) + x % 2) * 2) - 1) + 2) x 1

end Sequence