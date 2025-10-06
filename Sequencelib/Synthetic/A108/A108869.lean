/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A108869 sequence
-/

namespace Sequence

@[OEIS := A108869, offset := 0, maxIndex := 100, derive := true]
def A108869 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ 2 * ((x + x) + x)) y 1 + x * y) x 1

end Sequence