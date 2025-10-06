/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A215862 sequence
-/

namespace Sequence

@[OEIS := A215862, offset := 0, maxIndex := 100, derive := true]
def A215862 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ x + y) y y * (1 + y)) + x) x 0

end Sequence