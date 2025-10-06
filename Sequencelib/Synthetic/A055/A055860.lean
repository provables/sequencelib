/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A055860 sequence
-/

namespace Sequence

@[OEIS := A055860, offset := 0, maxIndex := 17, derive := true]
def A055860 (x : ℕ) : ℕ :=
  Int.toNat <| if x ≤ 0 then 0 else loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ y) x 1 x

end Sequence