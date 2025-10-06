/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163810 sequence
-/

namespace Sequence

@[OEIS := A163810, offset := 0, maxIndex := 100, derive := true]
def A163810 (x : ℕ) : ℤ :=
  if x ≤ 0 then 1 else loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 0 1

end Sequence