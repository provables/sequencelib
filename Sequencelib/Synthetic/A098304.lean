/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098304 sequence
-/

namespace Sequence

@[OEIS := A098304, offset := 0, maxIndex := 100, derive := true]
def A098304 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 + loop (λ (x _y) ↦ x + x) 4 x) + x) - y) (λ (x _y) ↦ x) x 0 1

end Sequence