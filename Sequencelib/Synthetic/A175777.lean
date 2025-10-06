/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175777 sequence
-/

namespace Sequence

@[OEIS := A175777, offset := 0, maxIndex := 50, derive := true]
def A175777 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((y * y) / loop (λ (x _y) ↦ x * x) 2 2) + x) x 0

end Sequence