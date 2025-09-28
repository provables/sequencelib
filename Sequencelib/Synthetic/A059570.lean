/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059570 sequence 
-/


namespace Sequence

@[OEIS := A059570, offset := 1, derive := true, maxIndex := 50]
def A059570 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x + x) y (2 + y) - x) x 2 / 2)

end Sequence

