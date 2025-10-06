/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158632 sequence
-/

namespace Sequence

@[OEIS := A158632, offset := 0, maxIndex := 100, derive := true]
def A158632 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * ((loop (λ (x y) ↦ x * y) 4 x - x) * x)) + 1

end Sequence