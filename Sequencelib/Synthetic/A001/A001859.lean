/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001859 sequence
-/

namespace Sequence

@[OEIS := A001859, offset := 0, maxIndex := 100, derive := true]
def A001859 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + (x - (y / 2))) x (x * x)

end Sequence