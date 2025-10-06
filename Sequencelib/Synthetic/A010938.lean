/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010938 sequence
-/

namespace Sequence

@[OEIS := A010938, offset := 0, maxIndex := 22, derive := true]
def A010938 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x y) ↦ x * y) 4 x - x) / y) - x) x 1

end Sequence