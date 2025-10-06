/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A250495 sequence
-/

namespace Sequence

@[OEIS := A250495, offset := 0, maxIndex := 4, derive := true]
def A250495 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) (loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x) 0 1

end Sequence