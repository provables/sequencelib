/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078590 sequence
-/

namespace Sequence

@[OEIS := A078590, offset := 1, maxIndex := 6, derive := true]
def A078590 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ loop (λ (x _y) ↦ loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x) 0 x + x) x 1 + 1) / y)
  (λ (x _y) ↦ x) x 1 2

end Sequence