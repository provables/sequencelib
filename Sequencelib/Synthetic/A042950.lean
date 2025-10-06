/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A042950 sequence
-/

namespace Sequence

@[OEIS := A042950, offset := 0, maxIndex := 32, derive := true]
def A042950 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (x - (1 / y)) + x) x 2

end Sequence