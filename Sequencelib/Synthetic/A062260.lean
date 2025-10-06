/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062260 sequence
-/

namespace Sequence

@[OEIS := A062260, offset := 0, maxIndex := 98, derive := true]
def A062260 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 + (2 + y))) * x) x (1 + loop (λ (x y) ↦ x + y) x x)

end Sequence