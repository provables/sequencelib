/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136293 sequence
-/

namespace Sequence

@[OEIS := A136293, offset := 0, maxIndex := 44, derive := true]
def A136293 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * (((2 * (x * y)) + x) + y)) + x) 2 x - x

end Sequence