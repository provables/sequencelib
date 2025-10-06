/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A116971 sequence
-/

namespace Sequence

@[OEIS := A116971, offset := 0, maxIndex := 100, derive := true]
def A116971 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ 1 + (loop (λ (x _y) ↦ 2 + (2 * (2 + x))) 2 x + y)) x 1 + 2) + 2) * 2

end Sequence