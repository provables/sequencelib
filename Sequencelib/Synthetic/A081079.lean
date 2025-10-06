/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081079 sequence
-/

namespace Sequence

@[OEIS := A081079, offset := 0, maxIndex := 50, derive := true]
def A081079 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + (x + y)) (λ (x _y) ↦ x) (2 * (x + x)) 2 0 - 2

end Sequence