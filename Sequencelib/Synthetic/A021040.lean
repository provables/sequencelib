/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021040 sequence
-/

namespace Sequence

@[OEIS := A021040, offset := 0, maxIndex := 98, derive := true]
def A021040 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ (2 + y) * y) (λ (_x _y) ↦ 2) x 1 1 - 1

end Sequence