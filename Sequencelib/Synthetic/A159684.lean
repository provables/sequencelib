/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159684 sequence
-/

namespace Sequence

@[OEIS := A159684, offset := 0, maxIndex := 100, derive := true]
def A159684 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ ((y * y) / ((2 + y) + x)) + y) (1 + x) 0 + y) 2 x % 2

end Sequence