/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079429 sequence
-/

namespace Sequence

@[OEIS := A079429, offset := 0, maxIndex := 18, derive := true]
def A079429 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x * y) y 2 1 + x) x 0 + 2

end Sequence