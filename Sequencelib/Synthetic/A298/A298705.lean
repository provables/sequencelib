/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A298705 sequence
-/

namespace Sequence

@[OEIS := A298705, offset := 1, maxIndex := 10, derive := true]
def A298705 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (((loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (2 + (x - y))) (x) (y)) (x) (1) / 2) + 1) % 2)) x

end Sequence