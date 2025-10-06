/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017128 sequence
-/

namespace Sequence

@[OEIS := A017128, offset := 0, maxIndex := 19, derive := true]
def A017128 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 2 (loop (λ (x y) ↦ 1 + (2 * (x * y))) 2 x)

end Sequence