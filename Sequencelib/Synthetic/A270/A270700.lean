/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A270700 sequence
-/

namespace Sequence

@[OEIS := A270700, offset := 0, maxIndex := 100, derive := true]
def A270700 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (_x y) ↦ 3 * (2 * y)) x 1 + y) 2 x - 2

end Sequence