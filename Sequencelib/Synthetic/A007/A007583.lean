/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007583 sequence
-/

namespace Sequence

@[OEIS := A007583, offset := 0, maxIndex := 100, derive := true]
def A007583 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ 1 - (x + x)) (x + x) 1

end Sequence