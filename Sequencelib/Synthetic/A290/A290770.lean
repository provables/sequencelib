/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290770 sequence
-/

namespace Sequence

@[OEIS := A290770, offset := 0, maxIndex := 25, derive := true]
def A290770 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ (x * y) * y) (λ (_x y) ↦ y) y x y) x 1

end Sequence