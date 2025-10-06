/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A188589 sequence
-/

namespace Sequence

@[OEIS := A188589, offset := 0, maxIndex := 30, derive := true]
def A188589 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 + ((x + x) + y)) (x - 1) 1

end Sequence