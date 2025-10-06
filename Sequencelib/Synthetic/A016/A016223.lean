/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016223 sequence
-/

namespace Sequence

@[OEIS := A016223, offset := 0, maxIndex := 21, derive := true]
def A016223 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ 1 + (2 * (x + x))) y 1 + 2 * ((x + x) + x)) + x) x 1

end Sequence