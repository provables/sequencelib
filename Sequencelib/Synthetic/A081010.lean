/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081010 sequence
-/

namespace Sequence

@[OEIS := A081010, offset := 0, maxIndex := 50, derive := true]
def A081010 (x : ℕ) : ℕ :=
  Int.toNat <| 2 + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (2 * (x + x)) 1 0

end Sequence