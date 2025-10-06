/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057157 sequence
-/

namespace Sequence

@[OEIS := A057157, offset := 0, maxIndex := 9, derive := true]
def A057157 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x - loop (λ (x y) ↦ x * y) x 1) 1
  (loop (λ (x _y) ↦ x + x) x 1)

end Sequence