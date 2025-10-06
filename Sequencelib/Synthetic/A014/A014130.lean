/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014130 sequence
-/

namespace Sequence

@[OEIS := A014130, offset := 0, maxIndex := 14, derive := true]
def A014130 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (2 * (x * y)) + x) x (loop (λ (x y) ↦ (1 + (2 + y)) * x) x 1)

end Sequence