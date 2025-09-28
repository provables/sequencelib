/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A240767 sequence 
-/


namespace Sequence

@[OEIS := A240767, offset := 1, derive := true, maxIndex := 8]
def A240767 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ loop2 (λ (x y : ℤ) ↦ ((x / 2) / 2) + y) (λ (x _y : ℤ) ↦ 1 - x) x 1 x) x

end Sequence

