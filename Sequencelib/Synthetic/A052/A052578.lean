/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052578 sequence
-/

namespace Sequence

@[OEIS := A052578, offset := 0, maxIndex := 100, derive := true]
def A052578 (x : ℕ) : ℕ :=
  Int.toNat <| 2 * if x ≤ 0 then 0 else loop (λ (x y) ↦ x * y) x 2

end Sequence