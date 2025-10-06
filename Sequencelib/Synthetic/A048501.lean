/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A048501 sequence
-/

namespace Sequence

@[OEIS := A048501, offset := 0, maxIndex := 100, derive := true]
def A048501 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ (loop (λ (x y) ↦ 2 * (x + y)) y 0 + x) + x) x 1 - 1) + 1) - (x + x)

end Sequence