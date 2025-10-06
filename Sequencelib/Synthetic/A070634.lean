/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070634 sequence
-/

namespace Sequence

@[OEIS := A070634, offset := 0, maxIndex := 100, derive := true]
def A070634 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 4 x % loop (λ (x _y) ↦ 1 + (x + x)) 2 2

end Sequence