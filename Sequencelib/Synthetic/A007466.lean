/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007466 sequence 
-/


namespace Sequence

@[OEIS := A007466, offset := 1, derive := true, maxIndex := 100]
def A007466 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) x (2 + loop (λ (x y : ℤ) ↦ x + y) x x) / 2)

end Sequence

