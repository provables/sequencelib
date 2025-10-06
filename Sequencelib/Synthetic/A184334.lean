/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184334 sequence
-/

namespace Sequence

@[OEIS := A184334, offset := 0, maxIndex := 100, derive := true]
def A184334 (x : ℕ) : ℤ :=
  if x ≤ 0 then 1 else loop2 (λ (_x y) ↦ y) (λ (x y) ↦ y - x) x 0 2

end Sequence