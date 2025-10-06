/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022396 sequence
-/

namespace Sequence

@[OEIS := A022396, offset := 0, maxIndex := 37, derive := true]
def A022396 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x _y) ↦ 1 + (x * x)) 2 2 + y) (λ (x y) ↦ x + y) x 1 0

end Sequence