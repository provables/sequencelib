/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A113835 sequence 
-/


namespace Sequence

@[OEIS := A113835, offset := 1, derive := true, maxIndex := 26]
def A113835 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 1 + (2 * (x * y))) 2 y) (λ (x _y : ℤ) ↦ x) x 1 0

end Sequence

