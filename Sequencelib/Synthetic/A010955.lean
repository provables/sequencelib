/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010955 sequence
-/

namespace Sequence

@[OEIS := A010955, offset := 0, maxIndex := 38, derive := true]
def A010955 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 * (loop (λ (x _y) ↦ 2 * (2 + x)) 2 2 * x)) / y) - x) x 1

end Sequence