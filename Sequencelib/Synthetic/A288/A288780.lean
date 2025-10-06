/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A288780 sequence
-/

namespace Sequence

@[OEIS := A288780, offset := 0, maxIndex := 100, derive := true]
def A288780 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 1 + x) (x - 1) 0 * x

end Sequence