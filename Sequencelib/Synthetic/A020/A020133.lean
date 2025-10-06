/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A020133 sequence
-/

namespace Sequence

@[OEIS := A020133, offset := 0, maxIndex := 20, derive := true]
def A020133 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ (3 * (x * y)) - x) x 1 / loop (λ (x _y) ↦ (x + x) + x) x 1) + loop (λ (_x _y) ↦ 1) x 0

end Sequence