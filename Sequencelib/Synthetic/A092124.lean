/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092124 sequence
-/

namespace Sequence

@[OEIS := A092124, offset := 0, maxIndex := 9, derive := true]
def A092124 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 + loop (λ (x _y) ↦ x * x) y 2) * x) x 2

end Sequence