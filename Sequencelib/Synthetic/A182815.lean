/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182815 sequence
-/

namespace Sequence

@[OEIS := A182815, offset := 0, maxIndex := 78, derive := true]
def A182815 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ (x - 1) - if x ≤ 0 then 2 else y) x x + x) + 2) + x) + x

end Sequence