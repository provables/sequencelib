/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A062615 sequence 
-/


namespace Sequence

@[OEIS := A062615, offset := 1, derive := true, maxIndex := 4]
def A062615 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop2 (λ (_x y : ℤ) ↦ 1 + y) (λ (x y : ℤ) ↦ 2 * (x + y)) x 1 0) x 2

end Sequence

