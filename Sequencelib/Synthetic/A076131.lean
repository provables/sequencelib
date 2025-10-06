/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076131 sequence
-/

namespace Sequence

@[OEIS := A076131, offset := 0, maxIndex := 79, derive := true]
def A076131 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + loop (λ (x _y) ↦ x + x) y x) x 0

end Sequence