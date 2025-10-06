/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A267780 sequence
-/

namespace Sequence

@[OEIS := A267780, offset := 0, maxIndex := 100, derive := true]
def A267780 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x _y) ↦ 4 * x) y 1 - x % 4) x 1 * 2) - 1

end Sequence