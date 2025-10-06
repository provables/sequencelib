/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099894 sequence
-/

namespace Sequence

@[OEIS := A099894, offset := 0, maxIndex := 85, derive := true]
def A099894 (x : ℕ) : ℕ :=
  Int.toNat <| if loop (λ (x y) ↦ (x - 1) % y) x 0 ≤ 0 then 1 + x else 0

end Sequence