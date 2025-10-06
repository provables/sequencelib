/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067055 sequence
-/

namespace Sequence

@[OEIS := A067055, offset := 0, maxIndex := 7, derive := true]
def A067055 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x y) ↦ x * y) y x) (λ (_x y) ↦ y) (loop (λ (x y) ↦ x + y) x 0) 1 x

end Sequence