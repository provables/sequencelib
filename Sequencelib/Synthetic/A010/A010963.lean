/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010963 sequence
-/

namespace Sequence

@[OEIS := A010963, offset := 0, maxIndex := 46, derive := true]
def A010963 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 * loop (λ (x y) ↦ x * y) 4 x) / y) - x) x 1

end Sequence