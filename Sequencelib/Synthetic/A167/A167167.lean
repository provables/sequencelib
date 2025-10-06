/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167167 sequence
-/

namespace Sequence

@[OEIS := A167167, offset := 0, maxIndex := 100, derive := true]
def A167167 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x + x) x 0 1 - if x ≤ 0 then 1 else 0

end Sequence